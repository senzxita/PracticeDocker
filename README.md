# PracticeDocker
Week 3's task was to recreate the technical assessment.

I have done it, but this time running it directly from ubuntu terminal, almost the same documentation with sca-cloud-school-repo, just a few changes here and there.

## Steps
1. Clone repo from github, automatically create a directory for you and downloads the file existing in the repo before cloning.
 ```
 $ git clone https://github.com/senzxita/practicedocker 
 ```
2. Create your html file, inside the repo (directory created)
```
user@hostmachine:~/practicedocker$ nano index.html 
```
3. write your html code in the html file
4. Create a dockerfile using ```nano dockerfile```
```
FROM ubuntu:latest
RUN apt-get update $$ apt-get update -y
RUN apt-get install nginx -y
COPY index.html /var/www/html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
```
5. Build docker image
```
sudo docker build <path to dockerfile> 
```
To list the docker images available ``` sudo docker images ``` 

6. Start new image and test connectivity
```
sudo docker run -p 80:80  <enter image-ID>
```
7. Create a branch ``` git checkout -b <branch name>```, ``` git add . ``` and add a commit message ``` git commit -m "commit message```, push to github ``` git push --set-upstream origin <branch name>```, enter your login credentials to gain access to github.
8. Make changes to your dockerfile 
9. Build another docker image, to pick up the changes made.
10. Run container and test for connectivity
11. Commit changes to a new branch; repeat step 7. Then create a pull request on github.
12. Push final docker image to docker hub.

