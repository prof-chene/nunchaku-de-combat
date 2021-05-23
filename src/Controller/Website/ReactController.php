<?php
namespace App\Controller\Website;

use FOS\RestBundle\Controller\Annotations\Get;
use Sulu\Bundle\WebsiteBundle\Controller\WebsiteController;
use Symfony\Component\HttpFoundation\Response;

class ReactController extends WebsiteController
{
    /**
     * @Get("/{reactRouting}", defaults={"reactRouting": null})
     */
    public function indexAction(): Response
    {
        return $this->render('pages/homepage.html.twig');
    }
}
