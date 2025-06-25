## Setup

1. Install [`pip` and `virtualenv`][cloud_python_setup] if you do not already have them.

1. Install [Terraform](https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli) the [Google Cloud SDK](https://cloud.google.com/sdk/docs/install)

1. Clone this repository:

    ```
    git clone https://github.com/paulramsey/adk-toolbox-agent.git
    cd adk-toolbox-agent
    ```

1. Obtain authentication credentials.

    Create local credentials by running the following:

    ```
    gcloud auth application-default login
    ```

    Read more about [Google Cloud Platform Authentication][gcp_auth].

1. Set your project.

    Set your project context by running the following:

    ```
    gcloud auth application-default set-quota-project adk-toolbox
    gcloud config set project adk-toolbox
    ```

1. Create a virtualenv. Samples are compatible with Python 3.6+.

    ```
    python3 -m venv env
    source env/bin/activate
    ```

1. Install the dependencies needed to run the samples.

    ```
    pip install -r requirements.txt
    ```

1. Deploy base infrastructure with Terraform.

    ```
    cd terraform/
    terraform init
    ```

    ```
    terraform plan -var "gcp_project_id=YOUR_PROJECT" -var "region=YOUR_REGION" -var "alloydb_password=YOUR_PASSWORD"
    ```

    ```
    terraform apply -var "gcp_project_id=YOUR_PROJECT" -var "region=YOUR_REGION" -var "alloydb_password=YOUR_PASSWORD"
    ```

1. Tear down the deployed infrastructure with Terraform.

    ```
    terraform destroy -var "gcp_project_id=YOUR_PROJECT" -var "region=YOUR_REGION" -var "alloydb_password=YOUR_PASSWORD"
    ```