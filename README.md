# ML model deployed on GCP via Flask

[![Python application test with Github Actions](https://github.com/yasarigno/GCP-ML-Model-via-Flask/actions/workflows/gcp.yml/badge.svg)](https://github.com/yasarigno/GCP-ML-Model-via-Flask/actions/workflows/gcp.yml)

In this project, an ML-model is deployed on GCP using Flask. The Machine Learning step of this project is **coming soon**.

<p align="center">
<img align="center" src="Files\CD.png" style="width: 700px" />
</p>

Here is the roadmap to build a continuous delivery of an application through Google Cloud Platform.

### Step-by-step roadmap

1. The files are created on GitHub. I first create a project on GCP called <ins>**Continuous-Delivery-ML-model**</ins>. 

2. Let us make a new directory **MLdelivery**

```
mkdir MLdelivery

cd MLdelivery/

cd GCP-ML-Model-via-Flask
```

3. Now I clone the files on my GitHub repository "GCP-ML-Model-via-Flask"

4. We need a virtual environment:

```
virtualenv ~/.cd

source ~/.cd/bin/activate
```

5. Install the dependencies and run the application. We see the link to open up our application on the web browser. 

A message _Running on http://127.0.0.1:8080 (Press CTRL+C to quit)_ will appear.

```

make install

python main.py
```
---

Until now we have built a Flask application which works well; yet we haven't built the continuous delivery. 

6. Let us deploy it. Go to the main terminal and put

```
gcloud app deploy
```

Gcloud will be requesting the credentials to make a GCP API call. Authorize Cloud Shell.

Choose the region.

7. Good! The application is online. Here it is...

https://continuous-delivery-ml-model.ew.r.appspot.com/

and this...

https://continuous-delivery-ml-model.ew.r.appspot.com/echo/firat

8. Go to Cloud Build on GCP in order to create a new trigger **cloud-delivery**

Select the options below:

- Repository event that invokes trigger: Push to a branch
- Branch: ^master$

Connect New Repository. Here we need to autorize API to connect to our GitHub repo.

We now make some settings. Enable **App Engine Admin API** and **Service Accounts**

9. Any event on the code on the GitHub repo will directly give the result on the web app. Make a change and see it.

**UPDATE : ** The web application is no more working since I have run out of my free GCP account. 


