aws cognito-idp initiate-auth \
    --client-id ${clienteId} \
    --auth-flow USER_PASSWORD_AUTH \
    --auth-parameters USERNAME=${username},PASSWORD=${password} \
    --query 'AuthenticationResult.IdToken' \
    --output text