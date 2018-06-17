<?php
declare(strict_types=1);

/*
 +------------------------------------------------------------------------+
 | Phosphorum                                                             |
 +------------------------------------------------------------------------+
 | Copyright (c) 2013-present Phalcon Team and contributors               |
 +------------------------------------------------------------------------+
 | This source file is subject to the New BSD License that is bundled     |
 | with this package in the file LICENSE.txt.                             |
 |                                                                        |
 | If you did not receive a copy of the license and are unable to         |
 | obtain it through the world-wide-web, please send an email             |
 | to license@phalconphp.com so we can send you a copy immediately.       |
 +------------------------------------------------------------------------+
*/

namespace Phosphorum\Frontend\Mvc\Controllers;

use Phosphorum\Core\Environment;
use Phosphorum\Core\Mvc\Controller as ControllerBase;
use Phalcon\Assets\Filters\Cssmin;

/**
 * Phosphorum\Frontend\Mvc\Controllers\Controller
 *
 * @package Phosphorum\Frontend\Mvc\Controllers
 */
class Controller extends ControllerBase
{
    public function onConstruct(): void
    {
        /** @var Environment $env */
        $env = $this->getDI()->get(Environment::class);

        $this->registerCss($env);
    }

    /**
     * Register default site styles.
     *
     * @param Environment $env
     */
    protected function registerCss(Environment $env): void
    {
        $this->assets
            ->collection('default_css')
            ->setTargetPath($env->getPath('public/css/style.css'))
            ->setTargetUri('css/style.css')
            ->addCss($this->module->getPath('resources/assets/css/bootstrap.css'), true)
            ->addCss($this->module->getPath('resources/assets/css/material-design-iconic-font.min.css'), true, false)
            ->addCss($this->module->getPath('resources/assets/css/font-awesome.min.css'), true, false)
            ->addCss($this->module->getPath('resources/assets/css/style.css'), true)
            ->addCss($this->module->getPath('resources/assets/css/responsive.css'), true)
            ->addCss('https://fonts.googleapis.com/css?family=Titillium+Web:200,400,600', false, false)
            ->join(true)
            ->addFilter(new Cssmin());
    }
}
