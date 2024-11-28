Welcome to your new dbt project!

### Using the starter project

Try running the following commands:
- dbt run
- dbt test


### Resources:
- Learn more about dbt [in the docs](https://docs.getdbt.com/docs/introduction)
- Check out [Discourse](https://discourse.getdbt.com/) for commonly asked questions and answers
- Join the [chat](https://community.getdbt.com/) on Slack for live discussions and support
- Find [dbt events](https://events.getdbt.com) near you
- Check out [the blog](https://blog.getdbt.com/) for the latest news on dbt's development and best practices


### Installation
1. Installe Poetry :
   ```bash
   curl -sSL https://install.python-poetry.org | python3 -

### Installation
2. poetry install
3. poetry shell
4.  dbt run
    dbt test

5. Ajoute `poetry.lock` et `pyproject.toml` à ton gestionnaire de version

```bash
gcloud builds submit \
--region=europe-west1 \
--tag europe-west9-docker.pkg.dev/wtayo-sandbox/dbt-registry/dbt-project:tag1 \
--verbosity="debug"

```bash
gcloud builds submit \
--config cloudbuild_build.yaml . 


```bash
gcloud builds submit \
--config cloudbuild_created.yaml .

```bash
gcloud storage buckets create gs://dbt-docs-hostweb \
--location=EU \
--storage-class=STANDARD

gcloud storage buckets update gs://dbt-docs-hostweb \
--website-main-page=index.html \
--website-not-found-page=404.html

gcloud storage buckets add-iam-policy-binding gs://dbt-docs-hostweb \
--member=allUsers \
--role=roles/storage.objectViewer




