import $ from 'jquery';
import _ from 'lodash';
import utils from '@bigcommerce/stencil-utils';
import StencilDropDown from './stencil-dropdown';

export default function () {
    // var TOP_STYLING;
    const $quickSearchResults = $('.quickSearchResults');
    const $quickSearchDiv = $('#quickSearch');
    const $searchQuery = $('.dropdown--quickSearch [name="search_query"]');
    const stencilDropDownExtendables = {
        hide: () => {
            $searchQuery.trigger('blur');
        },
        show: (event) => {
            $searchQuery.trigger('focus');
            event.stopPropagation();
        },
    };
    const stencilDropDown = new StencilDropDown(stencilDropDownExtendables);
    stencilDropDown.bind($('[data-search="quickSearch"]'), $quickSearchDiv);
    if ($(window).width() <= 1024) {
        $('[data-search="quickSearch"]').on('click', function() {
            $quickSearchDiv.css('top', ($(".header").height() + 1));
        });
    }

    

    stencilDropDownExtendables.onBodyClick = (event, $container) => {
        // If the target element has this data tag or one of it's parents, do not close the search results
        // We have to specify `.modal-background` because of limitations around Foundation Reveal not allowing
        // any modification to the background element.
        // alert($(event.target).closest('[data-prevent-quick-search-close]').length);
        if ($(event.target).closest('[data-prevent-quick-search-close]').length === 0) {
            stencilDropDown.hide($container);
            $('body').removeClass('themevale_quickSearch');
        }
        //$('.bg-mobile').on('click', function(ev) {
        //});
        // if ($('body').hasClass('themevale_quickSearch')) {
        //     stencilDropDown.hide($container);
        //     $('body').removeClass('themevale_quickSearch');
        // }
    };

    // stagger searching for 200ms after last input
    const doSearch = _.debounce((searchQuery) => {
        utils.api.search.search(searchQuery, { template: 'search/quick-results' }, (err, response) => {
            if (err) {
                return false;
            }

            $quickSearchResults.html(response);
        });
    }, 200);

    utils.hooks.on('search-quick', (event) => {
        const searchQuery = $(event.currentTarget).val();

        // server will only perform search with at least 3 characters
        if (searchQuery.length < 3) {
            return;
        }

        doSearch(searchQuery);
    });

    // Catch the submission of the quick-search
    $quickSearchDiv.on('submit', event => {
        const searchQuery = $(event.currentTarget).find('input').val();

        if (searchQuery.length === 0) {
            return event.preventDefault();
        }

        return true;
    });
}
