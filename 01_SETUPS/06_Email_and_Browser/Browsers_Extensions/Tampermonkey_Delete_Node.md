// ==UserScript==
// @name         Add "Delete Node" to Context Menu in Reader View
// @namespace    http://tampermonkey.net/
// @version      0.1
// @description  Adiciona a opção "Delete Node" no menu de contexto enquanto no Reader View
// @author       You
// @match        *://*/*
// @grant        GM_registerMenuCommand
// @grant        unsafeWindow
// ==/UserScript==

(function() {
    'use strict';
  
    function deleteNode(e) {
        const node = e.target;
        if (node) {
            node.remove();
        }
    }

    GM_registerMenuCommand('Delete Node', function() {
        document.addEventListener('contextmenu', function(event) {
            const node = event.target;
            if (node) {
                deleteNode(event);
            }
        });
    });
})();
