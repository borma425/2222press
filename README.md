# 2222press

Free tool to install and use tailwindcss with your **WordPress theme** And Also Your Child Theme in same time  easily and also minify your classes as css code from Your Command line

and You don't need to import the **tailwind.config.js** file in your **<script src>** html page
Because it is all merged automatically with the css file

**works smart**
You can change the file and folder names and they will be found

### I know the guide looks big, but it's very, very easy

  
 ## See tutorial Video :
 
   [![Step Image](https://user-images.githubusercontent.com/42983220/172398614-bef59fa8-106c-4e7e-9b5c-30f190835599.png)](https://youtu.be/ONudJgT0Ol0)

  
## Getting Started

1- You must have npm packge

2- You must have bash script

_______________________________________

# Setup

1.  `cd project_directory/wp-content/themes/YourTheme/YourAssets/`
1.  `git clone https://github.com/borma425/2222press.git`
1.  `cd 2222press/render`
1.  `bash render.sh -install`

## Now to prepare the Tailwind css file You have two choices :

### A- without Optimizing for Production
build your CSS  With full prepare without minify

1.  `bash render.sh -full`

Rebuilding... your CSS  With Watch
  `bash render.sh -watch`

### B- With Optimizing for Production

build your CSS  With prepare css minify your classes 

2.  `bash render.sh -minify`
_______________________________________

# general information

Files with the default name :

* tailwind.min.css 
* input.css 
* tailwind.config.js 
* functions.php

are downloaded and used You can change them externally

But you must make sure to modify them in the variables in the **render.sh**  file between line **2:8**


_______________________________________

# How it works ?
* tailwindcss **node_modules** downloads normally as the official tailwind does
* Create a **tailwind.config.js** file
* import **tailwind.min.css** file as hook in **functions.php** in end of lines of file

  
 Codes are copied from the tool's core files

* simple-functions.php
* simple.config.js

 So if you want when installing something to be copied, you can modify the file and it will be transferred as it is
  
 _______________________________________

# How to Uninstall
 Just
 * remove a hook from **functions.php**
 * delete **2222press** folder
 _______________________________________

# How to upload a template without packages
We know that the **node_modules** folder is large in size
  
so , just delete :
* node_modules folder
* package.json
* package-lock.json
 
also you can delete optional:
* tailwind.config.js 
  
 
but You don't need to delete the **tailwind.config.js**  file, it will be recognized automatically next time when you install
  
It will not be created again, do not worry
  
 This is how you can upload the template in a smaller size and reuse it again locally without **tailwind.config.js** file customizations
 

  
 
