window.addEventListener( 'message', async function( event )
{
    const { type, invokingResource } = event.data;

    if ( type === 'fetch' )
    {
        const {
            url,
            input,
            method,
            headers,

            callbackUri
        } = event.data.data;

        // Url para onde vamos enviar a resposta do fetch
        const callbackUrl = `https://${ invokingResource }/${ callbackUri }`;

        try
        {
            const response = await fetch( url, {
                method,
                headers,
                body: JSON.stringify( input ),
            });
    
            const responseBody = await response.text();

            fetch( callbackUrl, {
                method: 'POST',

                body: JSON.stringify({
                    responseHeaders : response.headers,
                    status          : response.status,
                    body            : response.ok ? responseBody : null,
                    errorData       : response.ok ? null         : responseBody,
                }),
            });
        }
        catch( e )
        {
            fetch( callbackUrl, {
                method: 'POST',

                body: JSON.stringify({
                    responseHeaders : { },
                    status          : 5001, // Custom error code
                    body            : null,
                    errorData       : e instanceof Error ? e.message : e,
                }),
            });
        }
    }
});