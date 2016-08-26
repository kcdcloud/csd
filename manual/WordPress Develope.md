# WordPress
## Теги WordPress
* [Справочник wordpress ru](wp-kama.ru)
* [Справочник wordpress en](https://codex.wordpress.org/%D0%A1%D0%BE%D0%B7%D0%B4%D0%B0%D0%BD%D0%B8%D0%B5_%D1%82%D0%B5%D0%BC)

<?php bloginfo(`name`); ?> - данная функция с параметром name передает имя темы сайта (название сайта)
параметры bloginfo:
* name
* description
* stylesheet_url
* template_url - выводит путь
<?php echo home_url(); ?> - ссылка на домен сайта оператор echo отобразит данные наэкране
<?php the_title(); ?> - выводит заголовок статьи
<?php the_content(); ?> - вывод контента используется только внутри цикла wordpress theloop
<?php have_posts(); ?>
<?php the_post(); ?>
<?php the_excerpt(); ?>
<?php the_permalink(); ?>
<?php var_dump($post); ?> - получить объект post есть еще объект posts это массив его можно использовать для создание своего цикла вместо стандартного theloop
<?php echo $post->post_title ?> - тоже самое что и ф-ия the_title только напрямую свойство post_title из объекта post
<?php get_header(); ?>
<?php get_sidebar(); ?>
<?php get_footer(); ?>
<?php wp_title(); ?> - выводит название страницы
<?php wp_head(); ?> - включение админ бара
<?php wp_footer(); ?>
<?php ?>

файл функций functions.php - все стили и скрипты постановка в очередь
<?php add_action('wp_enqueue_sripts', 'user_function_load_script'); ?> - ф-ия add_action осуществляет привязку нашей функции к действию или hook крючкам (хуки это ф-ии к которым можно прицепиться и что выполнить или изменить в их работе) цепляемся к ф-ии wp_enqueue_scripts которая ставит в очередь на подгрузку скрипты в том числе пользовательские


function user_function_load_script(){
  wp_enqueue_script('name_script', 'get_template_directory_url()ж');
}
