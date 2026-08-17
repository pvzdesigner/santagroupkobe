page = 'mypets';
pedId = 0;
pedCategory = 'Dogs';
pedGender = 'M';
buyId = 0;
number = 0;
texture = 0;
type = "";
petsData = [];
firstData = [];

id = 0;
mynetID = 0;
petName = "";
petLabel = "";
petHungryLevel = 0;
petThirstLevel = 0;
petEnergyLevel = 0;
petHealthLevel = 0;
petGender = "";
petLevel = 0;
pedHash = 0;
hungryDecrase = 0;
thirstDecrase = 0;
animalList = "";
listOf = "";
petXP = 0;
lastXP = 0;
petTexureID = 0;
spawn = false;
outside = 0;
interactBool = false;
showInfo = true;
items = [];
totalPrice = 0;
basketItems = [];
generalData = [];
petCoord = [];
shopCoord = [];
duiCoord = [];
updatePetCoords = false;
updateShopCoords = false;
updateDuiCoords = false;

hasKeyOnScreen = false
var translations = {}

$(document).ready(function () {
    fetch('http://localization/getLang', {
        method: 'POST',
        body: JSON.stringify({ resourceName: 'pets' })
    })
    .then(response => response.json())
    .then(data => {
        translations = data;
    });
    $(".owned-text").html(translations.yourPets);
})

window.addEventListener("message", function (e) {
    $(".owned-text").html(translations.yourPets);
  e = e.data

  if (whileLoop == false) {
    $('.dui').hide();
  }
  
  switch (e.action) {
      case "OPEN_BOUGHTSCREEN":
        return openBuyScreen(e);
      case "BUY_SHOP":
        return buyShop(e);
      case "BOSS_MENU":
        return bossMenu(e);
      case "MY_PETS":
        return myPets(e);
      case "SHOW_KEY":
        const coordX = e.coordX;
        const coordY = e.coordY;
        return showKey(coordX, coordY, e.petName,e.petLevel,e.petIMG,e.petHungryLevel, e.petThirstLevel, e.petEnergyLevel, e.petHealthLevel, e.petGender, e.vehicleSeat, e.showInfo,e.Locales);
      case "CLOSE_KEY":
        if (hasKeyOnScreen) {
          return closeInteractionKey();
        }
      case "OPEN_CONTROLPANEL":
        return openControlMenu(e.data, e.Locales, e.Orders, e.ManualMode, e.isSelling)
      case "OPEN_ITEMSHOP":
        return openItemShop(e.data);
      case "OPEN_PERMISSION":
        return openPermission(e.data);
      case "PET_COORDS":
        return petCoords(e);
      case "OPEN_DUI":
        return openDui(e);
      case "CLOSE_DUI":
        return closeDui();
      case "CLOSE_INTERACT":
        $("body , .pet-select , .pet-interact , .buy-shop , .boss-menu , .mypets , .shop-menu ,.bg-color").fadeOut(500);
        $.post(`http://pets/close`, JSON.stringify({}));
        default:
      return;
  }
})

$(document).on('click', '.shop-box .purchase', function (e) {
  index = $(this).data('index');
  index = index + 1;
  $.post(`https://pets/buyshop`, JSON.stringify({index:index}), function (a) {
    if (a) {
      notification('success', 'Compra concluída!');
    }else{
      notification('error', 'Erro ao realizar compra');
    }
  })
})

$(document).on('click', '.shop-box .map', function (e) {
  coords = $(this).data('coords');
  $.post(`https://pets/setWaypoint`, JSON.stringify({coords:coords}), function (a) {
    if (a) {
      notification('success', 'Waypoint definido com sucesso');
    }else{
      notification('error', 'Erro ao setar waypoint');
    }
  })
})


$(document).on('click', '.list', function (e) {
  pedId = $(this).data('id');
  pedCategory = $(this).data('category');
  if ($(this).hasClass('fa-eye')) {
    $(this).removeClass('fa-eye').addClass('fa-eye-slash');
    $(this).parent().css('opacity', '0.5');
    $.post(`https://pets/hidePet`, JSON.stringify({pedId:pedId,pedCategory:pedCategory,hide:false}), function (a) {})
  } else {
    $(this).removeClass('fa-eye-slash').addClass('fa-eye');
    $(this).parent().css('opacity', '1');
    $.post(`https://pets/hidePet`, JSON.stringify({pedId:pedId,pedCategory:pedCategory,hide:true}), function (a) {})
  }
})

$(document).on('click', '.pay-button', function (e) {
  $.post(`https://pets/pay`, JSON.stringify({amount:totalPrice,basket:basketItems,method:$(this).data('method')}), function (a) {
    if (a) {
      notification('success', 'Pagamento realizado!');
    }else{
      notification('error', 'Erro ao realizar pagamento');
    }
  })

})

$(document).on('click', '.shop-panel', function (e) {

  $('.shop-panel').css({
    'filter': '',
    'cursor': ''
  });

  $('.shop-panel svg').css({
    'filter': '',
    'cursor': ''
  });

  $('.shop-panel svg path').css({
    'fill': ''
  });

  $(this).css({
    'filter': 'brightness(1.2) drop-shadow(0 0 0.35rem #7d209d)',
    'cursor': 'pointer'
  });

  $(this).find('svg').css({
    'filter': 'brightness(1.2) drop-shadow(0 0 0.35rem #7d209d)',
    'cursor': 'pointer'
  });

  $(this).find('svg path').css({
    'fill': '#7d209d'
  });

  function traduzirCategoria(categoria) {
    const traducoes = {
        dog: 'cachorros',
        cat: 'gatos',
        toys: 'brinquedos',
        health: 'saúde'
    };

    return traducoes[categoria] || categoria;
}
  

  category = $(this).data('category');
  $('.item-list').empty();
  $.each(items[category], function (i, v) {
    $('.item-list').append(`
        <div class="item">
        <img src="${v.img}" alt="">
        <img src="${v.img}" alt="">
        <div class="price">$${formatNumber(v.price)}</div>
        <div class="alt">${traduzirCategoria(category)} </div>
        <div class="name">${v.label}</div>
        <svg data-img="${v.img}" data-price="${v.price}" data-item=${v.name} width="38" height="38" viewBox="0 0 38 38" fill="none" xmlns="http://www.w3.org/2000/svg">
          <rect width="38" height="38" rx="4" fill="#7d209d"/>
          <path d="M15.0003 26.9999C15.7367 26.9999 16.3337 26.403 16.3337 25.6666C16.3337 24.9302 15.7367 24.3333 15.0003 24.3333C14.2639 24.3333 13.667 24.9302 13.667 25.6666C13.667 26.403 14.2639 26.9999 15.0003 26.9999Z" fill="#0A0A0A"/>
          <path d="M24.3333 26.9999C25.0697 26.9999 25.6667 26.403 25.6667 25.6666C25.6667 24.9302 25.0697 24.3333 24.3333 24.3333C23.597 24.3333 23 24.9302 23 25.6666C23 26.403 23.597 26.9999 24.3333 26.9999Z" fill="#0A0A0A"/>
          <path d="M26.7 13.3658C26.6063 13.2513 26.4883 13.159 26.3546 13.0957C26.2208 13.0324 26.0746 12.9997 25.9267 13H13.2454L12.99 11.5508C12.9628 11.3965 12.882 11.2566 12.7619 11.1559C12.6418 11.0552 12.4901 11 12.3333 11H9.66667C9.48986 11 9.32029 11.0702 9.19526 11.1953C9.07024 11.3203 9 11.4899 9 11.6667C9 11.8435 9.07024 12.013 9.19526 12.1381C9.32029 12.2631 9.48986 12.3333 9.66667 12.3333H11.7742L13.6767 23.1158C13.7039 23.2702 13.7847 23.41 13.9047 23.5108C14.0248 23.6115 14.1766 23.6667 14.3333 23.6667H25C25.1768 23.6667 25.3464 23.5964 25.4714 23.4714C25.5964 23.3464 25.6667 23.1768 25.6667 23C25.6667 22.8232 25.5964 22.6536 25.4714 22.5286C25.3464 22.4036 25.1768 22.3333 25 22.3333H14.8925L14.6575 21H24.7267C24.9579 20.9997 25.1819 20.9195 25.3607 20.7731C25.5396 20.6266 25.6624 20.4228 25.7083 20.1962L26.9083 14.1963C26.9372 14.051 26.9336 13.9012 26.8975 13.7576C26.8615 13.614 26.794 13.4802 26.7 13.3658Z" fill="#0A0A0A"/>
        </svg>
      </div>
      `);
  })
})


$(document).on('click', '.item-list .item svg', function (e) {
  const price = $(this).data('price');
  const item = $(this).data('item');
  const img = $(this).data('img');

  let basketItem = basketItems.find(b => b.item === item);

  if (basketItem) {
    basketItem.count += 1;
    $(`.basket-item[data-item="${item}"]`).find('.count').html(basketItem.count);
  } else {
    basketItems.push({ item, price, img, count: 1 });
    $('.basket-list').append(`
      <div class="basket-item" data-price="${price}" data-item="${item}">
        <img src="${img}" alt="">
        <div class="price">$${formatNumber(price)}</div>
        <div class="name">${item}</div>
        <div class="arti">+</div>
        <div class="eksi">-</div>
        <div class="count">1</div>
      </div>
    `);
  }

  totalPrice += price;
  $('.total-payment').html('$' + formatNumber(totalPrice));
});

$(document).on('click', '.basket-list .basket-item .arti', function (e) {
  const $parent = $(this).parent();
  const item = $parent.data('item');
  const basketItem = basketItems.find(b => b.item === item);

  if (basketItem) {
    basketItem.count += 1;
    let count = basketItem.count;
    $parent.find('.count').html(count);

    totalPrice += basketItem.price;
    $('.total-payment').html('$' + formatNumber(totalPrice));
  }
});

$(document).on('click', '.basket-list .basket-item .eksi', function (e) {
  const $parent = $(this).parent();
  const item = $parent.data('item');
  const basketItem = basketItems.find(b => b.item === item);

  if (basketItem) {
    basketItem.count -= 1;
    let count = basketItem.count;

    if (count === 0) {
      $parent.remove();
      basketItems = basketItems.filter(b => b.item !== item);
    } else {
      $parent.find('.count').html(count);
    }

    totalPrice -= basketItem.price;
    $('.total-payment').html('$' + formatNumber(totalPrice));
  }
});

let whileLoop = false;

function openDui(data) { 
  if (whileLoop == false) {
    $('body , .dui').show();
    $('.dui img').attr('src', data.img);
    whileLoop = true;
  }
}

function closeDui(data){
  $('body , .dui').fadeOut(100);
  whileLoop = false;
}

function openItemShop(data) { 
  $('body , .shop-menu').fadeIn(100);

  $('.item-list , .basket-list').empty();

  items = data['items'];

  $.each(data['items']['dog'], function (i, v) {
    $('.item-list').append(`
      <div class="item">
        <img src="${v.img}" alt="">
        <img src="${v.img}" alt="">
        <div class="price">$${formatNumber(v.price)}</div>
        <div class="alt">cachorros </div>
        <div class="name">${v.label}</div>
        <svg data-img="${v.img}" data-price="${v.price}" data-item=${v.name} width="38" height="38" viewBox="0 0 38 38" fill="none" xmlns="http://www.w3.org/2000/svg">
          <rect width="38" height="38" rx="4" fill="#7d209d"/>
          <path d="M15.0003 26.9999C15.7367 26.9999 16.3337 26.403 16.3337 25.6666C16.3337 24.9302 15.7367 24.3333 15.0003 24.3333C14.2639 24.3333 13.667 24.9302 13.667 25.6666C13.667 26.403 14.2639 26.9999 15.0003 26.9999Z" fill="#0A0A0A"/>
          <path d="M24.3333 26.9999C25.0697 26.9999 25.6667 26.403 25.6667 25.6666C25.6667 24.9302 25.0697 24.3333 24.3333 24.3333C23.597 24.3333 23 24.9302 23 25.6666C23 26.403 23.597 26.9999 24.3333 26.9999Z" fill="#0A0A0A"/>
          <path d="M26.7 13.3658C26.6063 13.2513 26.4883 13.159 26.3546 13.0957C26.2208 13.0324 26.0746 12.9997 25.9267 13H13.2454L12.99 11.5508C12.9628 11.3965 12.882 11.2566 12.7619 11.1559C12.6418 11.0552 12.4901 11 12.3333 11H9.66667C9.48986 11 9.32029 11.0702 9.19526 11.1953C9.07024 11.3203 9 11.4899 9 11.6667C9 11.8435 9.07024 12.013 9.19526 12.1381C9.32029 12.2631 9.48986 12.3333 9.66667 12.3333H11.7742L13.6767 23.1158C13.7039 23.2702 13.7847 23.41 13.9047 23.5108C14.0248 23.6115 14.1766 23.6667 14.3333 23.6667H25C25.1768 23.6667 25.3464 23.5964 25.4714 23.4714C25.5964 23.3464 25.6667 23.1768 25.6667 23C25.6667 22.8232 25.5964 22.6536 25.4714 22.5286C25.3464 22.4036 25.1768 22.3333 25 22.3333H14.8925L14.6575 21H24.7267C24.9579 20.9997 25.1819 20.9195 25.3607 20.7731C25.5396 20.6266 25.6624 20.4228 25.7083 20.1962L26.9083 14.1963C26.9372 14.051 26.9336 13.9012 26.8975 13.7576C26.8615 13.614 26.794 13.4802 26.7 13.3658Z" fill="#0A0A0A"/>
        </svg>
      </div>
    `);
  })
}

function openPermission(data) {
  $('.members-box , .hired-box').empty();
  $.each(data['members'], function (i, v) {
    $('.members-box').append(`
      <div class="member-item">
            <img src="${v.discord}" class="user-img" alt="">
            <div class="name">${v.name}</div>
            <div class="position">Usuário</div>
            <div class="auth">Permissão</div>
            <div class="auth-status">None</div>
            <img data-id="${v.id}" data-name="${v.name}" data-identifier="${v.identifier}" src="https://santaimagens.roleplayrp.com/img/pets/arti.png" class="arti" alt="">
      </div>
    `);
  })
  $.each(data['players'], function (i, v) {
    $('.hired-box').append(`
        <div class="hired-item">
            <img src="${v.discord}" class="user-img" alt="">
            <div class="name">${v.name}</div>
            <div class="position">Gerente</div>
            <div class="auth">Permissão</div>
            <div class="auth-status">None</div>
            <img data-id="${v.id}" data-name="${v.name}" data-identifier="${v.identifier}" src="https://santaimagens.roleplayrp.com/img/pets/Vector.png" class="arti" alt="">
        </div>
    `);
  })
}


function openControlMenu(data,Locales, Orders, ManualMode, isSelling) { 
  $(".interact-list").empty();
  $('body , .pet-interact').fadeIn(100);
  $('.pet-interact .name').html(data.petName);
  // $('.pet-interact .petinteract-img').attr('src', data.petIMG);
  
  $('.pet-interact .hearth-svg').css('stroke-dasharray', data.petHealthLevel + ' 2000');

  $.each(Orders, function (i, v) {
    if (v.listOf.includes(data.listOf)) {
        let clickable, style, imgSrc;

        if (data.petHealthLevel >= 3 && data.petLevel >= v.level) {
            clickable = true;
            style = "";
            imgSrc = v.svg;
        } else {
            clickable = false;
            style = "color: rgb(255, 255, 255, 0.5);";
            imgSrc = 'https://santaimagens.roleplayrp.com/img/pets/locked.png';
        }

        $(".interact-list").append(`
            <div data-netid="${Number(data.netID)}" data-animaltype="${data.listOf}" data-event="${v.args}" data-clickable="${clickable}" class="interact-item">
                <img src="${imgSrc}" alt="">
                <div class="text" style="${style}">${v.label}</div>
            </div>
        `);
    }
  });

  $('.interact-item').click(function (e) {
      e.preventDefault();
      const eventName = $(this).attr('data-event');
      const animalType = $(this).attr('data-animaltype');
      const animalNetworkID = $(this).attr('data-netid');
      const clickable = $(this).attr('data-clickable') === "true";
  
      if (eventName === "pets:client:backPet") {
          $('body, .pet-interact').fadeOut(100);
      }
      if (clickable) {
          $.post("https://pets/setEvent", JSON.stringify({
              eventName,
              animalType,
              animalNetworkID
          }));
      }
  });
}

const interactionKeyDOM = document.getElementsByClassName("dog-interact-box")[0];
let interactionKeyOpened = false;

function showKey(coordX, coordY,petName,petLevel,petIMG,petHungryLevel, petThirstLevel, petEnergyLevel, petHealthLevel, petGender, vehicleSeat, showInfo, Locales) { 
  interactBool = true
  $('body, .dog-interact-box').fadeIn(100);

  showInfo = showInfo
  if (!vehicleSeat) {

      if (showInfo) {
          if (interactionKeyOpened) {
              interactionKeyDOM.style.left = coordX*100+"%";
              interactionKeyDOM.style.right = (100 - coordX*100)+"%";
              interactionKeyDOM.style.top = coordY*80+"%";
              interactionKeyDOM.style.bottom = (100 - coordY*100)+"%";
          }
          else {
              interactionKeyDOM.style.left = coordX*100+"%";
              interactionKeyDOM.style.right = (100 - coordX*100)+"%";
              interactionKeyDOM.style.top = coordY*80+"%";
              interactionKeyDOM.style.bottom = (100 - coordY*100)+"%";
              
              interactionKeyOpened = true;
              interactionKeyDOM.classList.add("fadeIn");
              setTimeout(function(){
                  interactionKeyDOM.classList.remove("fadeIn");
                  interactionKeyDOM.style.opacity = 1
              }, 1000);
          }
      }
      $('.dog-interact-box .alt').html(petName);
      $('.dog-interact-box img').attr('src', petIMG);
      hasKeyOnScreen = true
  }
}

const closeInteractionKey = () => {
  hasKeyOnScreen = false
  interactBool = false
  if (showInfo) {
    $(".pet-operations").hide()
      interactionKeyOpened = false;
      interactionKeyDOM.classList.add("fadeOut");
      setTimeout(function(){
          interactionKeyDOM.classList.remove("fadeOut");
          interactionKeyDOM.style.opacity = 0
      }, 1000);
  }
  $.post(`https://${GetParentResourceName()}/nuiClose`);
};



// $(document).on('keydown', function () {
//   switch (event.keyCode) {
//     case 69:
//       if (interactionKeyOpened) {
//         $(".pet-operations").fadeIn(500)
//         $(".pet-operations").show()
//       }else{
//         $(".pet-operations").fadeOut(500)
//       }
//   }
// });


function bossMenu(e) {
  $('body, .boss-menu').fadeIn(100);

  $('.sell-box').empty();

  $('.mypets-list').empty(); 


  $('.mypets-list').append(`
          <div class="edit-box">
            <img src="https://santaimagens.roleplayrp.com/img/pets/rottweiler.png" class="dogimg setedit" alt="">
            <img src="https://santaimagens.roleplayrp.com/img/pets/rottweiler.png" class="filterdogimg" alt="">
            <div class="change-text"></div>
            <div class="name-box">
              <div class="text">NOME DO PET</div>
              <input class="name-input setname" value="Snoop Dogg" type="text">
            </div>
            <div class="name-box" style="top: 47%;">
              <div class="text">IMG</div>
              <input class="name-input setimg" value="https://media.discordapp.net/attachments/714590725660082177/1262785764794826832/image.png?ex=6697dc63&is=66968ae3&hm=c60f2bc05bd0888b40c3b2eaa20b12b84089c48a948a84ff1291f535cd3fad3c&=&format=webp&quality=lossless&width=494&height=266" type="text">
            </div>
            <div class="name-box" style="top: 59%;">
              <div class="text">PREÇO</div>
              <input class="name-input setprice" style="color: #7d209d;" value="Snoop Dogg" type="number">
            </div>
            <div class="name-box" style="top: 71%;">
              <div class="text">GÊNERO</div>
              <img src="https://santaimagens.roleplayrp.com/img/pets/male.png" data-color="#0460A1" class="sex male" alt="">
              <img src="https://santaimagens.roleplayrp.com/img/pets/female.png" data-color="#ED6898" style="left: 90%;" class="sex female" alt="">
            </div>
            <div class="save mypets-save" >Salvar Mudanças</div>
          </div>
    `);

    const shopsData = e['data']['shopsData'];

    const logs = shopsData.logs || [];
    const pets = shopsData.pets ? shopsData.pets['Dogs'] || [] : [];
    const cats = shopsData.pets ? shopsData.pets['Cat'] || [] : [];

    generalData = shopsData.data || [];

    const level = shopsData.level || { level: 0, xp: 0 };
    
    $('.level').html(level.level);

    const currentXp = level.xp;
    const currentLevelXp = e['data']['level'][level.level] ? e['data']['level'][level.level].xp : 0;
    const nextLevelXp = e['data']['level'][level.level + 1] ? e['data']['level'][level.level + 1].xp : 100;
    const xpPercentage = ((currentXp - currentLevelXp) / (nextLevelXp - currentLevelXp)) * 144;
    const barPercentage = ((currentXp - currentLevelXp) / (nextLevelXp - currentLevelXp)) * 100;

    $('.menu-box .level-box svg').css('stroke-dasharray', 144+xpPercentage + ' 2000');

    $('.bar').css('width', 100+barPercentage + '%');

    $('.current-xp').html(currentXp + " xp");

    $('.required-xp').html(nextLevelXp + " xp");

    $('.total-price').html('$' + formatNumber(shopsData.data.money));

    $('.level-box .name').html(shopsData.data.name + ' Pet Shop' || 'Unknown');

    logs.forEach(log => {
      $('.sell-box').append(`
        <div class="sell-item">
          <div class="name">${log.playerName}</div>
          <img src="${log.img}" alt="">
          <div class="alt">comprou &nbsp;<span style="color: #fff;">${log.petName}</span>&nbsp; por &nbsp;<span style="color: #fff;">$${formatNumber(log.amount)}</span></div>
        </div>
      `);
    });

    pets.sort((a, b) => a.requiredLevel - b.requiredLevel);

    pets.forEach(pet => {
      const genderText = pet.petGender === 'M' ? 'macho' : 'fêmea';
      const genderImg = pet.petGender === 'M' ? 'https://santaimagens.roleplayrp.com/img/pets/male.png' : 'https://santaimagens.roleplayrp.com/img/pets/female.png';
      const displayLocked = level.level < pet.requiredLevel ? 'flex' : 'none';
      $('.mypets-list').append(`
          <div class="mypet-item" style="opacity: ${pet.list ? 1 : 0.5};">
                  <div style=" width: 30%;height: 24%;left: 33%;top: 8%;z-index: 5;" class="loader"></div>  
            <div style="display:${displayLocked};" class="locked-bg">
                <img src="https://santaimagens.roleplayrp.com/img/pets/lock.png" alt="">
                <div class="text" style="color: white;">PET BLOQUEADO!</div>
                <div class="text" style="top: 60%;color: white;">DESBLOQUEIA NÍVEL ${pet.requiredLevel}</div>
              </div>
              <div class="bg-blur"></div>
              <img src="${pet.img}" class="dog-img loadimg" alt="">
              <img src="${pet.img}" class="dog-blur loadimg" alt="">
              <img data-ped="${encodeURIComponent(JSON.stringify(pet))}" data-id="${pet.id}" data-category="${pet.listOf}"  src="https://santaimagens.roleplayrp.com/img/pets/edit.png" class="edit" alt="">
              <div class="name">${pet.petName}</div>
              <div class="name-alt">
                <div class="text">${pet.petNickName}</div>
              </div>
              <div class="levels-box">LEVEL ${pet.requiredLevel}</div>
              <div class="sex-box">${genderText}
                <img src="${genderImg}" alt="">
              </div>
              <div class="hr"></div>
              <div class="price-header">Preço</div>
              <div class="prices">$${formatNumber(pet.price)}</div>
              <i data-ped="${encodeURIComponent(JSON.stringify(pet))}" data-id="${pet.id}" data-category="${pet.listOf}" class="fa ${pet.list ? 'fa-eye' : 'fa-eye-slash'} list"  style="font-size:2vh"></i>
          </div>
      `);
      $('.mypets-list .loadimg:last').on('load', function() {
        $(this).siblings('.loader').remove();
        $(this).fadeIn();
      }).each(function() {
        if(this.complete) $(this).load();
      });
    });

    cats.sort((a, b) => a.requiredLevel - b.requiredLevel);

    cats.forEach(cat => {
      const genderText = cat.petGender === 'M' ? 'macho' : 'fêmea';
      const genderImg = cat.petGender === 'M' ? 'https://santaimagens.roleplayrp.com/img/pets/male.png' : 'https://santaimagens.roleplayrp.com/img/pets/female.png';
      const displayLocked = level.level < cat.requiredLevel ? 'flex' : 'none';

      $('.mypets-list').append(`
          <div class="mypet-item" style="opacity: ${cat.list ? 1 : 0.5};">
            <div style=" width: 30%;height: 24%;left: 33%;top: 8%;z-index: 5;" class="loader"></div>  
            <div style="display:${displayLocked};" class="locked-bg">
                <img src="https://santaimagens.roleplayrp.com/img/pets/lock.png" alt="">
                <div class="text" style="color: white;">PET BLOQUEADO!</div>
                <div class="text" style="top: 60%;color: white;">DESBLOQUEIA NÍVEL ${cat.requiredLevel}</div>
              </div>
              <div class="bg-blur"></div>
              <img src="${cat.img}" class="dog-img loadimg" alt="">
              <img src="${cat.img}" class="dog-blur loadimg" alt="">
              <img data-ped="${encodeURIComponent(JSON.stringify(cat))}" data-id="${cat.id}" data-category="${cat.listOf}"  src="https://santaimagens.roleplayrp.com/img/pets/edit.png" class="edit" alt="">
              <div class="name">${cat.petName}</div>
              <div class="name-alt">
                <div class="text">${cat.petNickName}</div>
              </div>
              <div class="levels-box">LEVEL ${cat.requiredLevel}</div>
              <div class="sex-box">${genderText}
                <img src="${genderImg}" alt="">
              </div>
              <div class="hr"></div>
              <div class="price-header">Price</div>
              <div class="prices">$${formatNumber(cat.price)}</div>

              <i data-ped="${encodeURIComponent(JSON.stringify(cat))}" data-id="${cat.id}" data-category="${cat.listOf}" class="fa ${cat.list ? 'fa-eye' : 'fa-eye-slash'} list"  style="font-size:2vh"></i>
          </div>
      `);
      $('.mypets-list .loadimg:last').on('load', function() {
        $(this).siblings('.loader').remove();
        $(this).fadeIn();
      }).each(function() {
        if(this.complete) $(this).load();
      });
    });
}


function myPets(data) {
  $('body , .mypets').fadeIn(100);
  $('.owned-box').empty();

  firstData = data['petlist'][0];

  // $('.mypets .pet-name').html(firstData.petName);
  // $('.mypets .pet-name').attr('src', firstData.petIMG);
  // $('.mypets .my-years').html(firstData.petAge + ' Anos');
  // $('.mypets .my-level').html(firstData.petLevel + ' Level');
  // $('.mypets .my-sex-img').attr('src', firstData.petGender === 'M' ? 'https://santaimagens.roleplayrp.com/img/pets/sec.png' : 'https://santaimagens.roleplayrp.com/img/pets/sec2.png');
  // $('.mypets .my-sex').html(firstData.petGender === 'M' ? 'Macho' : 'Fêmea');

  $.each(data['petlist'], function (i, v) {
    sex = v.petGender === 'M' ? 'https://santaimagens.roleplayrp.com/img/pets/sec.png' : 'https://santaimagens.roleplayrp.com/img/pets/sec2.png';
    sexCss = v.petGender === 'M' ? 'width:5%;height:15%;' : 'width:5%;height:21%;';
    $('.owned-box').append(`
      <div data-ped="${encodeURIComponent(JSON.stringify(v))}" data-level="${v.petLevel}" data-age="${v.petAge}" class="owned-item">
        <img src="${v.petIMG}" class="pet-img" alt="">
        <div class="pet-name">${v.petName}</div>
        <div class="pet-features">LEVEL ${v.petLevel}<br>${v.petAge} ${translations.yearsOld} </div>
        <img src="${sex}" style="${sexCss}" class="sex" alt="">
      </div>`);
  });

  $('.owned-box .owned-item:first').css({
    border: '1px solid rgba(255, 255, 255, 0.75)',
    background: 'rgba(31, 31, 31, 1.0)',
    'border-radius': '0vh'
  });

  setPetData($('.owned-box .owned-item:first'));

  $('.owned-box .owned-item').on('click', function () {
    setPetData($(this));
  });
}

function setPetData(element) {
  // $('.mypets .pet-name').html(element.find('.pet-name').html());
  // $('.mypets .pet-name').attr('src', element.find('.pet-img').attr('src'));
  // $('.mypets .my-years').html(element.data('age') + ' Anos');
  // $('.mypets .my-level').html(element.data('level') + ' Level');

  pet = JSON.parse(decodeURIComponent(element.data('ped')));
  id = pet.id;
  mynetID = pet.netID;
  petName = pet.petName;
  petLabel = pet.petLabel;
  petHungryLevel = pet.petHungryLevel;
  petThirstLevel = pet.petThirstLevel;
  petEnergyLevel = pet.petEnergyLevel;
  petHealthLevel = pet.petHealthLevel;
  petGender = pet.petGender;
  petLevel = pet.petLevel;
  pedHash = pet.pedHash;
  hungryDecrase = pet.hungryDecrase;
  thirstDecrase = pet.thirstDecrase;
  animalList = pet.animalList;
  listOf = pet.listOf;
  petXP = pet.petXP;
  lastXP = pet.lastXP;
  petTexureID = pet.petTexureID;
  spawn = pet.spawn;
  outside = pet.isOutSide;

  // if (outside==1) {
  //   $('.take-it').html('  <img src="https://santaimagens.roleplayrp.com/img/pets/take.png" style="position: absolute;left: 8%;" alt=""> take it in');
  // }else{
  //   $('.take-it').html('  <img src="https://santaimagens.roleplayrp.com/img/pets/take.png" style="position: absolute;left: 8%;" alt=""> take it out');
  // }

}


$(document).on('click', '.owned-item', function (e) {
  // Reseta o estilo das caixas antes de aplicar o novo estilo
  $('.mypets .owned-box .owned-item').css({
    border: '1px solid rgba(255, 255, 255, 0.35)',
    background: 'rgba(31, 31, 31, 0.80)',
    'border-radius': '0.5vh',
    position: 'relative'
  }).find('.blur-overlay').remove(); // Remove a overlay existente

  $(this).css({
    border: '1px solid rgba(255, 255, 255, 0.75)',
    'border-radius': '0vh'
  });

  // Pega os dados do pet e atualiza as informações
  pet = JSON.parse(decodeURIComponent($(this).data('ped')));
  id = pet.id;
  mynetID = pet.netID;
  petName = pet.petName;
  petLabel = pet.petLabel;
  petHungryLevel = pet.petHungryLevel;
  petThirstLevel = pet.petThirstLevel;
  petEnergyLevel = pet.petEnergyLevel;
  petHealthLevel = pet.petHealthLevel;
  petGender = pet.petGender;
  petLevel = pet.petLevel;
  pedHash = pet.pedHash;
  hungryDecrase = pet.hungryDecrase;
  thirstDecrase = pet.thirstDecrase;
  animalList = pet.animalList;
  listOf = pet.listOf;
  petXP = pet.petXP;
  lastXP = pet.lastXP;
  petTexureID = pet.petTexureID;
  spawn = pet.spawn;
  outside = pet.isOutSide;

  // Adiciona a overlay de desfoque à caixa selecionada
  let blurOverlay = `
    <div class="blur-overlay" style="
      position: absolute;
      top: 0;
      left: 0;
      width: 100%;
      height: 100%;
      background: rgba(31, 31, 31, 0.8);
      backdrop-filter: blur(5px);
      display: flex;
      justify-content: center;
      align-items: center;
      border-radius: 0.5vh;
    ">
      <button class="take-action-button" style="padding: 10px 20px; background-color: #fff; border: none; border-radius: 5px; cursor: pointer;">
        ${outside == 1 ? translations.savePet : translations.callPet}
      </button>
    </div>`;
  $(this).append(blurOverlay);

  // Adiciona evento ao botão para "take it in/out"
  $('.take-action-button').on('click', function() {
    if (outside == 1) {
      $.post("https://pets/takeInPet", JSON.stringify({
        id, mynetID, petName, petLabel, petHungryLevel, petThirstLevel, petEnergyLevel, petHealthLevel, petGender, petLevel, pedHash, hungryDecrase, thirstDecrase, animalList, listOf, petXP, lastXP, petTexureID, spawn
      }), function (x) {

      });
    } else {
      $.post("https://pets/spawnPet", JSON.stringify({
        id, mynetID, petName, petLabel, petHungryLevel, petThirstLevel, petEnergyLevel, petHealthLevel, petGender, petLevel, pedHash, hungryDecrase, thirstDecrase, animalList, listOf, petXP, lastXP, petTexureID, spawn
      }), function (x) {

      });
    }
    $('body, .mypets').fadeOut(100);
  });
  
  // // Atualiza as informações do pet
  // $('.mypets .pet-name').html($(this).find('.pet-name').html());
  // $('.mypets .pet-name').attr('src', $(this).find('.pet-img').attr('src'));
  // $('.mypets .my-years').html($(this).data('age') + ' Anos');
  // $('.mypets .my-level').html($(this).data('level') + ' Level');
});

$(document).on('click', '.take-it', function (e) {

  if (outside==1) {
    $.post("https://pets/takeInPet", JSON.stringify({id,mynetID, petName,petLabel,petHungryLevel,petThirstLevel,petEnergyLevel,petHealthLevel,petGender,petLevel,pedHash,hungryDecrase,thirstDecrase,animalList,listOf, petXP, lastXP,petTexureID,spawn}),function (x) {})  
  }else{
    $.post("https://pets/spawnPet", JSON.stringify({id,mynetID, petName,petLabel,petHungryLevel,petThirstLevel,petEnergyLevel,petHealthLevel,petGender,petLevel,pedHash,hungryDecrase,thirstDecrase,animalList,listOf, petXP, lastXP,petTexureID,spawn}),function (x) {})  
  }


  $('body, .mypets').fadeOut(100);
})

$(document).on('click', '.member-item .arti', function (e) {
  const $parent = $(this).closest('.member-item');
  const id = $(this).data('id');
  const name = $(this).data('name');
  const identifier = $(this).data('identifier');
  const img = $parent.find('img.user-img').attr('src');

  $('.hired-box').append(`
      <div class="hired-item">
          <img src="${img}" class="user-img" alt="">
          <div class="name">${name}</div>
          <div class="position">Manager</div>
          <div class="auth">Authority</div>
          <div class="auth-status">Employee</div>
          <img data-id="${id}" data-name="${name}" data-identifier="${identifier}" src="https://santaimagens.roleplayrp.com/img/pets/Vector.png" class="arti" alt="">
      </div>
  `);

  $parent.remove();

  $.post(`https://pets/addManager`, JSON.stringify({
    name: name,
    identifier: identifier,
    id: id
  }), function (a) {});
});


$(document).on('click', '.hired-item .arti', function (e) {
  const $parent = $(this).closest('.hired-item');
  const id = $(this).data('id');
  const name = $(this).data('name');
  const identifier = $(this).data('identifier');
  const img = $parent.find('img.user-img').attr('src');

  $('.members-box').append(`
      <div class="member-item">
          <img src="${img}" class="user-img" alt="">
          <div class="name">${name}</div>
          <div class="position">User</div>
          <div class="auth">Authority</div>
          <div class="auth-status">None</div>
          <img data-id="${id}" data-name="${name}" data-identifier="${identifier}" src="https://santaimagens.roleplayrp.com/img/pets/arti.png" class="arti" alt="">
      </div>
  `);

  $parent.remove();

  $.post(`https://pets/removeManager`, JSON.stringify({
    name: name,
    identifier: identifier,
    id: id
  }), function (a) {});
});



function notification(type, text) {
  $('.notification').html(text).fadeIn(500).addClass(type);

  setTimeout(() => {
    $('.notification').fadeOut(100, function() {
      $(this).removeClass(type).html('');
    });
  }, 3000);
}

function buyShop(data) {
  $('body, .buy-shop').fadeIn(100);
  $('.mypets, .boss-menu, .pet-interact, .pet-select').fadeOut();
  $('.shop-box').empty();

  $.each(data['data']['shops'], function(i, v) {
    let stars = '';
    for (let j = 0; j < v.rate; j++) {
      stars += '<img src="https://santaimagens.roleplayrp.com/img/pets/stars.png" class="star" alt="">';
    }

    $('.shop-box').append(`
      <div class="item">
        <img src="https://santaimagens.roleplayrp.com/img/pets/patas.png" class="ayaks" alt="">
        <img src="https://santaimagens.roleplayrp.com/img/pets/patas2.png" style="left: 65%;top: 75%;opacity: 0.7;" class="ayaks" alt="">
        <div class="color"></div>
        <div class="color-hover"></div>
        <img src="${v.img}" class="bg" alt="">
        <div class="stars-box">${stars}</div>
        <div class="type">${v.level}</div>
        <div class="name">${v.name}</div>
        <div class="description">${v.description}</div>
        <div class="coord1">${v.neighborhood}</div>
        <div class="coord1" style="left: 30%;">${v.street}</div>
        <div class="price">$ ${formatNumber(v.price)}</div>
        <div data-index=${i} class="purchase">Comprar</div>
        <div data-coords="${v.coords}" class="map">
          <img src="https://santaimagens.roleplayrp.com/img/pets/map.png" alt="">
        </div>
      </div>
    `);
  });
}

function formatNumber(num) {
  return num.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
}

var generalLevel;

function openBuyScreen(data) {
  $('body , .pet-select').fadeIn(100);
  petsData = data['data']['shopsData']['pets'];
  firstData = data['data']['shopsData']['pets'];
  const level = data['data']['shopsData'].level || { level: 0, xp: 0 };
  generalLevel = level;
  $('.pets-box').empty();
  $.each(data['data']['shopsData']['pets']['Dogs'], function (i,v) {
    if (level.level < v.requiredLevel){
      v.list = false;
    }
    if (v.list) {
    $('.pets-box').append(`
      <div data-id=${i} data-hash=${v.pedHash} data-ped="${encodeURIComponent(JSON.stringify(v))}" class="pet-item">
        <div class="loader"></div>  
      <img src=${v.img} alt="">
        <div class="status-border">

        </div>
      </div>
    `)
    $('.pets-box img:last').on('load', function() {
      $(this).siblings('.loader').remove();
      $(this).fadeIn();
    }).each(function() {
      if(this.complete) $(this).load();
    });
  } 
  });

}


$(document).on('click', '.withdraw-button', function (e) {

  withdrawAmount = $('.total-price').html().replace('$', '').replace(/,/g, '');

  if (withdrawAmount=="0") {
    notification('error', 'Sem dinheiro para sacar!');
    return;
  }
  
  $.post(`https://pets/withdraw`, JSON.stringify({}), function (a) {
    if (a) {
      notification('success', 'Saque concluído!');
      $('.total-price').html('$0');
    }else{
      notification('error', 'Ocorreu um erro ao sacar!');
    }
  });
})

$(document).on('click', '.personel-panel', function (e) {
  if (page === 'personel') {
    $('.personel-box').fadeOut(100);
    $('.mypets-box').fadeIn(100);
    page = 'mypets';
    $(this).html(`DASHBOARD
        <img src="https://santaimagens.roleplayrp.com/img/pets/user-icon.png" alt="">`);
  } else {
    $('.personel-box').fadeIn(100);
    $('.mypets-box').fadeOut(100);
    $.post(`https://pets/getnearbyplayers`, JSON.stringify({}), function (a) {
      $('.members-box').empty();
      a.forEach((member) => {
        $('.members-box').append(`
          <div class="member-item">
            <img src="${member.discord}" class="user-img" alt="">
            <div class="name">${member.name}</div>
            <div class="position">Usuário</div>
            <div class="auth">Permissão</div>
            <div class="auth-status">None</div>
            <img src="https://santaimagens.roleplayrp.com/img/pets/arti.png" class="arti" alt="">
          </div>
        `);
      })
    })
    page = 'personel';
    $(this).html(`FUNCIONÁRIOS
        <img src="https://santaimagens.roleplayrp.com/img/pets/user-icon.png" alt="">`);
  }
});


$(document).on('click', '.fa-gear', function (e) {
  $('#shop-edit , .bg-color').fadeIn(100);
  $('#shop-edit').css('display', 'flex');
  $('.shopname').val(generalData.name);
  $('.shopvalue').val(generalData.shopimg);
  $('.shopattr').attr('src', generalData.shopimg);

})

$(document).on('click', '.setpedcoords', function (e) {
  $('body').fadeOut(100);
  $.post(`https://pets/setcoords`, JSON.stringify({}), function (a) {
    if (a) {
      notification('success', 'Coordenadas atualizadas');
      petCoord = a;
      updatePetCoords = true;
      $('body').fadeIn(100);
    }
  })
})

$(document).on('click', '.setprop', function (e) {
  $('body').fadeOut(100);
  $.post(`https://pets/setprop`, JSON.stringify({}), function (a) {
    if (a) {
      duiCoord = a;
      updateDuiCoords = true;
      notification('success', 'Coordenadas atualizadas');
      $('body').fadeIn(100);
    }
  })

})

$(document).on('click', '.setshopcoords', function (e) {
  $('body').fadeOut(100);
  $.post(`https://pets/setshopcoords`, JSON.stringify({}), function (a) {
    if (a) {
      shopCoord = a;
      updateShopCoords = true;
      $('body').fadeIn(100);
      notification('success', 'Coordenadas atualizadas');
    }
  })
})

$(document).on('click', '.shopsettings-save', function (e) {
  $('#shop-edit , .bg-color').fadeOut(100);
  $.post(`https://pets/editShop`, JSON.stringify({
    shopName:$('.shopname').val(),
    shopImg:$('.shopvalue').val(),
    petCoords:petCoord,
    shopCoords:shopCoord,
    duiCoords:duiCoord,
    updateShopCoords : updateShopCoords,
    updatePetCoords : updatePetCoords,
    updateDuiCoords : updateDuiCoords
  }), function (a) {
    if (a) {
      updateShopCoords = false;
      updatePetCoords = false;
      updateDuiCoords = false;
      notification('success', 'Loja atualizada com sucesso');
      $('.shopattr').attr('src', $('.shopvalue').val());
      $('.shopname').val($('.shopname').val());
      $('.shopvalue').val($('.shopvalue').val());
    }else{
      notification('error', 'Erro ao editar loja');
    }
  })
})

$(document).on('click', '.mypets-save', function (e) {
  $('.edit-box , .bg-color').fadeOut(100);
  $.post(`https://pets/editPet`, JSON.stringify({
    pedId:pedId,
    pedCategory:pedCategory,
    pedImg:$('.setimg').val(),
    pedName:$('.setname').val(),
    pedPrice:$('.setprice').val(),
    pedGender:pedGender
  }), function (a) {
    if (a) {
      notification('success', 'Pet editado com sucesso');
      var editedPet = $('.mypet-item').filter(function() {
        return $(this).find('.edit').data('id') === pedId;
    });
    editedPet.find('.dog-img.loadimg').attr('src', $('.setimg').val());
    editedPet.find('.dog-blur.loadimg').attr('src', $('.setimg').val());
    editedPet.find('.name').text($('.setname').val());
    editedPet.find('.prices').text('$' + formatNumber($('.setprice').val()));
    }else{
      notification('error', 'Erro ao editar pet');
    }
  })

})

$(document).on('click', '.setcloth', function(e){
  const direction = $(this).data("direction");
  type = $(this).data("type");

  if (type === "hat") {
    number = (direction === "right") ? Math.min(number + 1, 4) : Math.max(number - 1, 0);
    $("#hatinput").val(number);
    $(".hatcount").html(`${number}/2`);
  }else if(type=="leash"){
    number = (direction === "right") ? Math.min(number + 1, 4) : Math.max(number - 1, 0);
    $("#leashinput").val(number);
    $(".leashcount").html(`${number}/2`);
  }else if(type=="glasses"){
    number = (direction === "right") ? Math.min(number + 1, 4) : Math.max(number - 1, 0);
    $("#glassesinput").val(number);
    $(".glassescount").html(`${number}/2`);

  }

  $.post("https://pets/setcloth", JSON.stringify({ type, number, texture }));
});

$(document).on('click', '.settexture', function(e){
  const direction = $(this).data("direction");
  let category = $(this).data("category");
  if (category=="hat") {
    texture = (direction === "right") ? Math.min(texture + 1, 8) : Math.max(texture - 1, 0);
    $(".hattexture").val(texture);
    $(".hattexturecount").html(`${texture}/8`); 
  }else if(category == "leash"){
    texture = (direction === "right") ? Math.min(texture + 1, 6) : Math.max(texture - 1, 0);
    $(".leashtexture").val(texture);
    $(".leashtexturecount").html(`${texture}/6`);
  }else if(category == "glasses"){
    texture = (direction === "right") ? Math.min(texture + 1, 6) : Math.max(texture - 1, 0);
    $(".glassestexture").val(texture);
    $(".glassestexturecount").html(`${texture}/6`);
  }
  $.post("https://pets/setcloth", JSON.stringify({ type, number, texture }));
});



$(document).on('click', '.buy-pet', function (e) {
  clothArray = [
    hat = {
      "draw" : $("#hatinput").val(),
      "texture" : $(".hattexture").val()
    },
    leash = {
      "draw" : $("#leashinput").val(),
      "texture" : $(".leashtexture").val()
    },
    glasses = {
      "draw" : $("#glassesinput").val(),
      "texture" : $(".glassestexture").val()
    }
  ]
  sellType = ""
  $.post("https://pets/buyPet", JSON.stringify({buyId,clothArray,pedCategory,sellType}), function (response) {
    if (response.success) {
      notification('success', 'Compra concluída!');
    } else if (response.error) {
      notification('error', response.error);
    } else {
      notification('error', 'Erro ao realizar compra!');
    }
  });     
  // $('body, .buy-shop').fadeOut(100);
})

$(document).on('click', '.edit', function (e) {
  $('.edit-box , .bg-color').fadeIn(100);
  $('.edit-box').css('display', 'flex');
  pedId = $(this).data('id');
  pedCategory = $(this).data('category');
  pedObj = JSON.parse(decodeURIComponent($(this).data('ped')));
  pedGender = pedObj.petGender;
  $('.setedit').attr('src', pedObj.img);
  $('.setname').val(pedObj.petName);
  $('.setimg').val(pedObj.img);
  $('.setprice').val(pedObj.price);
  if (pedObj.petGender === 'M') {
    $('.male').css('background-color', '#0460A1');
    $('.female').css('background-color', '');
  } else if (pedObj.petGender === 'F') {
    $('.female').css('background-color', '#ED6898');
    $('.male').css('background-color', '');
  }


})


$(document).on('click', '.sex', function (e) {
  $('.sex').css('background-color', 'transparent');
  $(this).css('background-color', $(this).data('color'));
})

$(document).on('click', '.pet-item', function (e) {
    pedObj = JSON.parse(decodeURIComponent($(this).data('ped')));
    buyId = $(this).data('id');
    pedCategory = pedObj.listOf;
    $('.health-stats').css('width', pedObj.healthRatio + '%');
    $('.energy-stats').css('width', pedObj.energyRatio + '%');
    $('.hungry-stats').css('width', pedObj.hungryRatio + '%');
    $('.thirsty-stats').css('width', pedObj.thirstRatio + '%');
    $('.petname').html(pedObj.petName);
    $('.petlabel').html(pedObj.petLabel);
    $('.petprice').html('$' + formatNumber(pedObj.price));
    $('.petyears').html(pedObj.petAge + ' ' + (pedObj.petAge === 1 ? 'ano' : 'anos'));
    $('.petlevel').html('LEVEL ' + pedObj.petLevel);
    $('.petgender').html(pedObj.petGender === 'M' ? 'macho' : 'fêmea');

    if (pedObj.petGender=="M") {
      $('.petsex').attr('src', 'https://santaimagens.roleplayrp.com/img/pets/sec.png');
    }else{
      $('.petsex').attr('src', 'https://santaimagens.roleplayrp.com/img/pets/sec2.png');
    }


    $('.pet-item').css({backgroundColor: 'rgb(217, 217, 217,0.4)',border: '1px solid rgba(31, 31, 31, 0.85)'});
    $(this).css({backgroundColor: 'white',border: '1px solid white'});


    $('.status-border').empty();

    $(this).find('.status-border').html(`
      <svg xmlns="http://www.w3.org/2000/svg" width="32" height="32" viewBox="0 0 32 32" fill="none">
        <circle cx="16" cy="16" r="16" fill="#7d209d"/>
        <path fill-rule="evenodd" clip-rule="evenodd" d="M20.7907 13.2093C20.9247 13.3434 21 13.5252 21 13.7148C21 13.9043 20.9247 14.0862 20.7907 14.2202L15.0713 19.9396C14.9372 20.0736 14.7554 20.1489 14.5658 20.1489C14.3763 20.1489 14.1945 20.0736 14.0604 19.9396L11.2007 17.0799C11.0705 16.9451 10.9984 16.7645 11 16.577C11.0017 16.3896 11.0768 16.2103 11.2094 16.0777C11.3419 15.9452 11.5213 15.87 11.7087 15.8684C11.8962 15.8667 12.0768 15.9388 12.2116 16.069L14.5658 18.4233L19.7798 13.2093C19.9138 13.0753 20.0957 13 20.2852 13C20.4748 13 20.6566 13.0753 20.7907 13.2093Z" fill="#1E1E1E"/>
      </svg>
    `);

    $.post(`https://pets/changePet`, JSON.stringify({pedHash:$(this).data('hash')}), function (a) {})


});


$(document).on('click', '.category-item', function (e) {
  $('.category-item').css({backgroundColor: 'rgba(31, 31, 31, 0.82)',border: '1px solid rgba(31, 31, 31, 0.85)'});
  $(this).css({backgroundColor: 'rgb(125, 32, 157,0.15)',border: '1px solid rgb(125, 32, 157,0.45)'});
  petsData = petsData[$(this).data('category')];
  $('.pets-box').empty();
  $.each(petsData, function (i,v) {
    if (generalLevel.level < v.requiredLevel){
      v.list = false;
    }
    if (v.list) {
      $('.pets-box').append(`
        <div data-id=${i} data-hash=${v.pedHash} data-ped="${encodeURIComponent(JSON.stringify(v))}" class="pet-item">
          <div class="loader"></div>
          <img src=${v.img} alt="">
          <div class="status-border">
          </div>
        </div>
      `);

      $('.pets-box img:last').on('load', function() {
        $(this).siblings('.loader').remove(); 
        $(this).fadeIn(); 
      }).each(function() {
        if(this.complete) $(this).load();
      });
  }
  });
        
  petsData = firstData;
});

// const scrollAmount = 3; 

// $('.pets-box').on('wheel', function (e) {
//   e.preventDefault();
//   const itemWidth = $('.pet-item').outerWidth(true); 
//   const scrollLeft = $(this).scrollLeft();
//   if (e.originalEvent.deltaY < 0) {
//     $(this).scrollLeft(scrollLeft - itemWidth * scrollAmount);
//   } else {
//     $(this).scrollLeft(scrollLeft + itemWidth * scrollAmount);
//   }
// });

$('.pets-box').on('wheel', function(event) {
  var delta = event.originalEvent.deltaY / 2.5;
  var scrollLeft = $(this).scrollLeft();
  $(this).scrollLeft(scrollLeft + delta);
  event.preventDefault();
});


$('.owned-box').on('wheel', function(event) {
  var delta = event.originalEvent.deltaY / 2.5;
  var scrollLeft = $(this).scrollLeft();
  $(this).scrollLeft(scrollLeft + delta);
  event.preventDefault();
});



$('.shop-box').on('wheel', function(event) {
  var delta = event.originalEvent.deltaY / 2.5;
  var scrollLeft = $(this).scrollLeft();
  $(this).scrollLeft(scrollLeft + delta);
  event.preventDefault();
});


var itemDragging
var dragging = false
var dragX = 0
var dragY = 0

document.addEventListener('mousedown',  e => {
        if (!$(e.target).hasClass('ui-draggable-handle')  ) {
            dragX = e.pageX;    
            dragY = e.pageY;
            $.post('https://pets/registerMouse', JSON.stringify({}));
            dragging = true
        }
        document.addEventListener('mouseup', () => dragging = false);
        document.addEventListener('mousemove', e => {
        
            if (dragging && !itemDragging) {
                var x = dragX - e.pageX;
                var y = dragY - e.pageY;
                $.post('https://pets/mouseMovement', JSON.stringify({x: x, y: y}));
            }  
        });
});

function close() {
  $("body , .pet-select , .pet-interact , .buy-shop , .boss-menu , .mypets , .shop-menu ,.bg-color").fadeOut(500);
  $.post(`http://pets/close`, JSON.stringify({}));
}

document.addEventListener('keydown', function(event) {
  if (event.key === 'Escape') {
      $("body , .pet-select , .pet-interact , .buy-shop , .boss-menu , .mypets , .shop-menu ,.bg-color").fadeOut(500);
      $.post(`http://pets/close`, JSON.stringify({}));
  }
});