function handler(event) {
    console.log('Injecting ubuntu touch styling fixes');

    var style = document.createElement('style');
    style.type = 'text/css';
    style.appendChild(document.createTextNode(
        '.navbar-toggle { display: none; } '+
        '.argnt-a-language-selection{ display: none; } ' +
        '.argnt-m-header__logo{ display: none; } ' +
        '.argnt-m-footer__link{ display: none; } ' +
        '.argnt-a-link{ display: none; } ' +
        '.col-sm-4 ag-footer-links{ display: none; } ' +
        '.ag-footer-links-title { display: none; } ' +
        '.bp-container bp-ui-dragRoot argenta-footer-container { display: none; } ' +
        '.ag-navbar-links { display: none; } ' +
        '.alert alert-danger { display: none; } ' +
        '.lp-content-text-area { display: none; } ' +
        '.argenta-notification panel panel-body { display: none; } ' +
        '.securityTipsHeader { display: none; } ' +
        '.securityTipsLine { display: none; } ' +
        '.logingrey { display: none; } ' +
        '.linksMenuMobile { display: none; } ' +
        '.argnt-a-collapse-header { display: none; } ' +
        '.argnt-p-message-warning-detail { display: none; } ' +
        '.argnt-m-footer { display: none; } ' +
        '.argnt-a-separator { display: none; } ' +
        '.social-media { display: none; } ' 
    ));

    document.head.appendChild(style);
}

window.addEventListener('load', handler, false);

