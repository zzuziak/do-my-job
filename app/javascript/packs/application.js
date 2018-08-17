import "bootstrap";
import "../plugins/flatpickr";


import $ from 'jquery';

global.$ = jQuery;
global.jQuery = jQuery;

import { loadDynamicBannerText } from '../components/banner';
loadDynamicBannerText();

