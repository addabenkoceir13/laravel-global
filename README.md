Data Tables
===============================
### Installation Yajra Laravel DataTables

- [Doc yajra Laravel](https://yajrabox.com/docs/laravel-datatables/10.0/installation)
- [Doc Data Tables](https://datatables.net/)

### Installing Laravel & DataTables
- [Doc Insttalation](https://yajrabox.com/docs/laravel-datatables/10.0/quick-starter)
  
- **#1** install datatables Laravel 9
<br>
    
      composer require yajra/laravel-datatables:"^9.0"

- **#2** install Laravel DataTables Vite

        npm i laravel-datatables-vite --save-dev

    - resources/js/app.js

            import './bootstrap';
            import 'laravel-datatables-vite';

    - resources/sass/app.scss **or** resources/css/app.css


            @import url('https://fonts.bunny.net/css?family=Nunito');
    
            @import 'variables';
    
            @import 'bootstrap/scss/bootstrap';
    
            @import 'bootstrap-icons/font/bootstrap-icons.css';
            @import "datatables.net-bs5/css/dataTables.bootstrap5.min.css";
            @import "datatables.net-buttons-bs5/css/buttons.bootstrap5.min. css";
            @import 'datatables.net-select-bs5/css/select.bootstrap5.css';

    - 
            npm run dev

- **#3** Setup a User DataTable
>php artisan datatables:make UsersModel

        php artisan datatables:make Users
