# create test CosmosDB account
az cosmosdb create --name forextestdb --resource-group BigDataAcademyMay2021

# create test Azure Storage Table
az storage table create --name forextesttbl --account-name forexstoragebda
# create read policy on Azure Storage Table
az storage table policy create --name readpolicy --table-name forextesttbl --account-name forexstoragebda --permissions r
# create read and write policy on Azure Storage Table
az storage table policy create --name managepolicy --table-name forextesttbl --account-name forexstoragebda --permissions raud
