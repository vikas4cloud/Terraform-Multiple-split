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
        
sh "terraform plan  -input=false -var subscription_id=${AZURE_SUBSCRIPTION_ID} -var tenant_id=${AZURE_TENANT_ID} -var client_id=${AZURE_CLIENT_ID} -var  client_secret=${AZURE_CLIENT_SECRET} -var source_uri='source_uri=['/subscriptions/a8a59231-c575-45fb-8e16-2b4c5b6a2271/resourceGroups/PWC-TEST/providers/Microsoft.Compute/disks/VM1_OsDisk_1_364ab25d96064260b6e89bb2ace19623', '/subscriptions/a8a59231-c575-45fb-8e16-2b4c5b6a2271/resourceGroups/PWC-TEST/providers/Microsoft.Compute/disks/Vm2_disk1_d1269e293e37420f8c67c2c306e092e9']'-var resource_group_name=${resource_group_name} -var location=${location} "  
    }
	
               
            }
        }
        stage('terraform apply') {
           steps {
		 wrap([$class: 'MaskPasswordsBuildWrapper']) {
               
			 
             sh "terraform apply -input=false -auto-approve  -var subscription_id=${AZURE_SUBSCRIPTION_ID} -var tenant_id=${AZURE_TENANT_ID} -var client_id=${AZURE_CLIENT_ID} -var  client_secret=${AZURE_CLIENT_SECRET} -var source_uri=${source_uri}  -var resource_group_name=${resource_group_name} -var location=${location} "
		 }
           }
        }
    
}
}

