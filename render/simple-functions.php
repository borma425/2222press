<?php



/* import Tailwind Css */


function tailwind_enqueue(){

wp_enqueue_style('tailwind.min.css', get_template_directory_uri() . 'EMPTY_PATH');

}



add_action('wp_enqueue_scripts','tailwind_enqueue');

