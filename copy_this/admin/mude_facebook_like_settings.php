<?php
  /**
  *    This file is part of Musterdenker Dev Module for OXID eShop.
  *
  *    Musterdenker Dev Module for OXID eShop is free software: you can redistribute it and/or modify
  *    it under the terms of the GNU General Public License as published by
  *    the Free Software Foundation, either version 3 of the License, or
  *    (at your option) any later version.
  *
  *    OXID eShop Community Edition is distributed in the hope that it will be useful,
  *    but WITHOUT ANY WARRANTY; without even the implied warranty of
  *    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
  *    GNU General Public License for more details.
  *
  *    You should have received a copy of the GNU General Public License
  *    along with Musterdenker Avatar Module for OXID eShop.  If not, see <http://www.gnu.org/licenses/>.
  *
  * @link http://www.musterdenker.de
  * @copyright (C) Christian Zacharias 
  * @package modules
  * @author Christian Zacharias <christian AT musterdenker.de.de>
  */
class mude_facebook_like_settings extends Shop_Config {


    /**
     * Current class template name.
     * @var string
     */
    protected $_sThisTemplate = 'mude_facebook_like_settings.tpl';

     /**
     * Executes parent method parent::render(), passes configuration data to
     * Smarty engine.
     *
     * @return string
     */
    public function render()
    {
        $sReturn = parent::render();

        $this->_aViewData['oxid'] = $this->getConfig()->getShopId();
        
        return $sReturn;

    }
}
?>
