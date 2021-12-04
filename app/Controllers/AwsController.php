<?php


namespace App\Controllers;

use Aws\S3\S3Client;
use Aws\Exception\AwsException;

class AwsController extends BaseController
{
    public $s3Client, $ci;
    public function __construct()
	{
		$key = "AKIAS3PXDHIRYZCROAKV";
$secret = "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";
$credentials = new Aws\Credentials\Credentials($key, $secret);

$s3 = new Aws\S3\S3Client([
    'version'     => 'latest',
    'region'      => 'us-west-2',
    'credentials' => $credentials,
    'stats'   => [
        'retries'      => true,
        'timer'        => false,
        'http'         => true,
    ]
]);
	}
    public function index()
    {
       

        echo "sdfsfd";
    }
}
