pipeline{
    agent any
 
stages
    {
    stage('Git Checkout')
    {
         steps
        {
             checkout scm
        }
    }
     stage('terraform init') {
            steps {
		  
		   
                 sh "terraform init -input=false"
		 
               
            }
        }
        
         stage('terraform plan') {
            steps {
		     wrap([$class: 'MaskPasswordsBuildWrapper']) {
        
			     sh "terraform plan  -input=false -var subscription_id=${AZURE_SUBSCRIPTION_ID} -var tenant_id=${AZURE_TENANT_ID} -var client_id=${AZURE_CLIENT_ID} -var  client_secret=${AZURE_CLIENT_SECRET}  -var resource_group_name=${resource_group_name} -var location=${location} -var source_uri=['/subscriptions/a8a59231-c575-45fb-8e16-2b4c5b6a2271/resourceGroups/PWC-TEST/providers/Microsoft.Compute/disks/VM1_OsDisk_1_dc2eac5506e74941844fa8b0a5a14114','/subscriptions/a8a59231-c575-45fb-8e16-2b4c5b6a2271/resourceGroups/PWC-TEST/providers/Microsoft.Compute/disks/UbuntuVM_disk1_9dc8fca8cbf44814b76f42e66c96f80e']"  
    }
	
               
            }
        }
        stage('terraform apply') {
           steps {
		 wrap([$class: 'MaskPasswordsBuildWrapper']) {
               
			 
             sh "terraform apply -input=false -auto-approve  -var subscription_id=${AZURE_SUBSCRIPTION_ID} -var tenant_id=${AZURE_TENANT_ID} -var client_id=${AZURE_CLIENT_ID} -var  client_secret=${AZURE_CLIENT_SECRET}  -var resource_group_name=${resource_group_name} -var location=${location} -var source_uri=${source_uri} "

		 }
           }
        }
    
}
}
