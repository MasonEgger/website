(function () {
    function addButtons() {
        var snippets = document.getElementsByClassName('highlight');
        var numberOfSnippets = snippets.length;
        for (var i = 0; i < numberOfSnippets; i++) {
            var b = document.createElement("button");
            b.classList.add('copy-btn')
            b.innerText = "Copy";

            b.addEventListener("click", function () {
                this.innerText = 'Copying..';
                code = this.nextSibling.innerText;
                console.log(code)
                navigator.clipboard.writeText(code);
                this.innerText = 'Copied!';
                var that = this;
                setTimeout(function () {
                    that.innerText = 'Copy';
                }, 1000)
            });
            snippets[i].prepend(b)
        }
    }

    addButtons();
})();
