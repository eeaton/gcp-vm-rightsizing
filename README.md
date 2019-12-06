# gcp-vm-rightsizing
Shell scripts to utilize GCP VM Rightsizing Recommendations, to optimize performance and cost.

Historically, GCP provided VM Rightsizing Recommendations on Cloud Console. This was a useful way to get ML-based insights for the appropriate sizes for workloads, but was only available via the UI, and could only be viewed for one project at a time, so was challenging for an organization to adopt at scale. The Finance Team might want an aggregated report of where this 

These scripts can run from Cloud Shell or gcloud sdk in your local environment. These scripts assume you have some familiarity with <a href="https://cloud.google.com/sdk/gcloud/" target="_blank">gcloud</a> and have already <a href="https://cloud.google.com/sdk/gcloud/reference/auth/" target="_blank">authenticated</a> to your GCP environment, which contains multiple projects under an <a href="https://cloud.google.com/resource-manager/docs/creating-managing-organization" target="_blank">Org node</a>. 

TODO: clarify the minimum IAM permissions required

TODO: create a script init.sh to enable the recommendations API across all projects in an organization
