TypeQast assessment assignment:

TASK: 

    Create deoployment script using template and param. files to do the following

    [x] resource group in "West Europe"
    [x] storage acc in above with encryption and prefix 'sentia'
    [x] virtual network in above with 3 subnets in 172.16.0.0/12
    [x] Apply tags to resource group
        - Environment = Test
        - Company = Sentia
    [ ] Create policy definition via REST API to restrict resource types to only 'compute' 'network' 'storage'
    [ ] Assign policy definition via REST API to subscription and resource group created beforehand

DELIVERABLE:
    
    - GH repo with above


I could not register with Azure because I don't have credit card with me at the moment.
Friend who works at larger company gave me his account for this purpose.
I was able to do the part which involves templates, but due to privileges of friends
account I am unable to do the policy part.

As per documentation at
https://docs.microsoft.com/en-us/cli/azure/create-an-azure-service-principal-azure-cli?toc=%2Fazure%2Fazure-resource-manager%2Ftoc.json&view=azure-cli-latest

quote:
"Note

If your account doesn't have the permissions to assign a role, you see an error message that your account "does not have authorization to perform action 'Microsoft.Authorization/roleAssignments/write' over scope '/subscriptions/{guid}'." Contact your Azure Active Directory admin to manage roles.
"

I realized I'm hitting this error due to lack of permissions on account I have at the moment.
As far as finishing, I believe I have everything in place to do so with normal account which has all required permissions, which
I'm unable to have at the moment because I'm at seaside on vacation.


Deliverable
- Template part

az login
cd azure_templates
az deployment create --name demoDeploy --location 'West Europe' --template-file template.json --parameters @./parameters.json

- Policy part

1. create service principal
az ad sp create-for-rbac --name demoPrincipal --password [CLIENT_SECRET]

2. with data from output of above update bin/get_token.sh
   when ran, it will give us token for step 3

3. use token from step 2, and set it in bin/api_call.sh
   when ran this should create policy which due to lack of permissions on account I am working with fails as described earlier.



