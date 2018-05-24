<?php
/**
 * Created by PhpStorm.
 * User: gustavoweb
 * Date: 23/05/2018
 * Time: 13:58
 */

require __DIR__ . '/config.inc.php';

$postData = filter_input_array(INPUT_POST, FILTER_DEFAULT);
$postData = array_map('strip_tags', $postData);
$postData = array_map('trim', $postData);

$action = $postData['action'];
unset($postData['action']);

switch ($action) {
    case 'search_product':

        if (!empty($postData['term_search'])) {

            $read = new \CRUD\Read;
            $read->readFull("SELECT * FROM products WHERE product_name LIKE '%{$postData['term_search']}%' LIMIT 4");

            if ($read->getResult()) {

                foreach ($read->getResult() as $item) {
                    $item['product_price_full'] = number_format($item['product_price'], 2, ',', '.');
                    $item['product_price_installment'] = number_format($item['product_price'] / 5, 2, ',', '.');
                    $json['product'][] = $item;
                }

            } else {
                $json['product_clear'] = true;
                break;
            }

        } else {
            $json['product_clear'] = true;
            break;
        }

        break;
}

echo json_encode($json);