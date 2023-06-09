<a name="readme-top"></a>

# 📗 Table of Contents

- [📗 Table of Contents](#-table-of-contents)
- [📖 \[final-group-capstone \] ](#-final-group-capstone--)
  - [🛠 Built With ](#-built-with-)
    - [Tech Stack ](#tech-stack-)
    - [Key Features ](#key-features-)
  - [💻 Getting Started ](#-getting-started-)
    - [Prerequisites](#prerequisites)
    - [Setup](#setup)
    - [Install](#install)
    - [Usage](#usage)
    - [Run tests](#run-tests)
  - [👥 Authors ](#-authors-)
  - [🔭 Future Features ](#-future-features-)
  - [🤝 Contributing ](#-contributing-)
  - [⭐️ Show your support ](#️-show-your-support-)
  - [🙏 Acknowledgments ](#-acknowledgments-)
  - [Kanban Board ](#kanban-board-)
  - [📝 License ](#-license-)

<!-- PROJECT DESCRIPTION -->

# 📖 [final-group-capstone ] <a name="about-project"></a>

**[ final-group-capstone ]** is an application which allows users to to book an apponitment with a doctor for the    stipulated amount of time.

## 🛠 Built With <a name="built-with"></a>

### Tech Stack <a name="tech-stack"></a>

<details>
<summary>Server</summary>
  <ul>
    <li><a href="https://www.ruby-lang.org/en/">Ruby</a></li>
    <li><a href="https://rubyonrails.org/">Ruby on Rails</a></li>
  </ul>
</details>
<summary>Database</summary>
  <ul>
    <li><a href="https://www.postgresql.org/">PostgreSQL</a></li>
  </ul>
</details>

<!-- Features -->

### Key Features <a name="key-features"></a>

- **[Authenicate user]**
- **[Fetch bookings]**
- **[Post bookings]**

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- GETTING STARTED -->

## 💻 Getting Started <a name="getting-started"></a>

To get a local copy up and running, follow these steps.

### Prerequisites

In order to run this project you need:

- Have ruby installed
- Have node installed
- Have rails installed

### Setup

You can find the React Frontend client at [React-client](https://github.com/Ibtisam34/Final-group-capstone-frontend.git)

Clone this repository to your desired folder:

To run and view this application, you will first have to clone a local version of this repository using:

git clone https://github.com/Ibtisam34/Final-group-capstone

### Install

Install this project with:
 `bundle install`

### Usage

- To run the project follow the instructions below:

- You can find the React Frontend client at [React-client](https://github.com/Ibtisam34/Final-group-capstone-frontend)

- Configure Environment file in your project by running the following command:

`bundle exec figaro install`

- In `config/application.yml`, add the following env keys:
  `DEVISE_SECRET_KEY:`
  `DB_USERNAME:`
  `DB_PASSWORD:`

- Run the command below to generate App Secret for your authentication and add as the DEVISE_SECRET_KEY in your       environment:
  `rake secret`

- Then run the following command to setup the database:
```
 rails db:create, rails db:migrate, rails db:seed
```

- Start a local server running the command:

`rails s`


### Run tests
```
To run tests, run the following command:
rspec spec/models/doctor_spec.rb
rspec spec/models/user_spec.rb
```


 -->
<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- AUTHORS -->

## 👥 Authors <a name="authors"></a>

👤 **Falis Abdikani**

- GitHub: [@ibtisam34](https://github.com/ibtisam34)
- LinkedIn: [Falis](https://linkedin.com/in/falis-abdikani/)

👤 **Joshua Blue-Jack**

- GitHub: [@Tamunokuro](https://github.com/Tamunokuro)
- LinkedIn: [Joshua Blue-Jack](https://linkedin.com/in/joshua-blue-jack/)

👤 **Girma Tarekegn**

- GitHub: [@Girma](https://github.com/grima336)
- LinkedIn: [Girma_Tarekegn](https://linkedin.com/in/girma-tarekegn/)

👤 **Odai**

- GitHub: [@odaialazzeh](https://github.com/odaialazzeh)
- LinkedIn: [odai alazzeh](https://github.com/odaialazzeh)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- FUTURE FEATURES -->

## 🔭 Future Features <a name="future-features"></a>

- [ ] **[More booking options]**

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- CONTRIBUTING -->

## 🤝 Contributing <a name="contributing"></a>

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](https://github.com/Ibtisam34/Final-group-capstone/issues).

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- SUPPORT -->

## ⭐️ Show your support <a name="support"></a>

Give a ⭐️ if you like this project!

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- ACKNOWLEDGEMENTS -->

## 🙏 Acknowledgments <a name="acknowledgements"></a>
  we would like to thank:
- Microverse for adding this project in the carriculum
- [Murat Korkmaz](https://www.behance.net/gallery/26425031/Vespa-Responsive-Redesign) the creator of the original design.


<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- Kanban Board -->

## Kanban Board <a name="kanban_board"></a>

- [Kanban Board](https://github.com/users/Ibtisam34/projects/12)
 
 <p align="right">(<a href="#readme-top">back to top</a>)</p>
 
 <!-- Initial Kanban Board -->
 
 ## Initial  Kanban Board <a name="Initial kanban_board"></a>
 
 ![image](https://user-images.githubusercontent.com/108012550/231453155-9bdbfaea-2a2a-4d0f-8875-15887a97384f.png)

- Team of 4 members



<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- LICENSE -->

## 📝 License <a name="license"></a>

This project is [MIT](./LICENSE) licensed.

<p align="right">(<a href="#readme-top">back to top</a>)</p>
