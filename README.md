## Setup

1. Install [Terraform](https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli) the [Google Cloud SDK](https://cloud.google.com/sdk/docs/install)

1. Clone this repository:

    ```
    git clone https://github.com/paulramsey/adk-toolbox-agent.git
    cd adk-toolbox-agent
    ```

1. Obtain authentication credentials.

    Create local credentials by running the following:

    ```
    gcloud auth login
    gcloud auth application-default login
    ```

    Read more about [Google Cloud Platform Authentication][gcp_auth].

1. Set your project.

    Set your project context by running the following:

    ```
    gcloud config set project adk-toolbox
    gcloud auth application-default set-quota-project adk-toolbox
    ```

1. Define environment variables.

    ```
    export TF_VAR_gcp_project_id="YOUR_PROJECT"
    export TF_VAR_region="YOUR_REGION"
    export TF_VAR_alloydb_password="YOUR_PASSWORD"
    export TF_VAR_cloud_sql_password="YOUR_PASSWORD"
    ```

1. Deploy base infrastructure with Terraform.

    ```
    # Initialize terraform
    cd terraform/
    terraform init
    ```

    ```
    # View resource creation plan
    terraform plan
    ```

    ```
    # Apply the terraform template
    terraform apply
    ```

1. Tear down the deployed infrastructure with Terraform.

    ```
    terraform destroy 
    ```

1. Login to the Vertex AI workbench endpoint listed in the Terraform outputs, and walk through the notebooks, starting with `1_setup_and_explore_databases.ipynb`.