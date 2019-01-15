*** Settings ***
Documentation    For Exercise #6 get the contents of the TinyMCE WYSIWYG
...              Editor.

Library    SeleniumLibrary

*** Test Cases ***
TinyMCE WYSIWYG Editor
    [Documentation]  I see the paragraph within the #tinymce but why can't
    ...  the Selenium Library!?!
    Open Browser    http://the-internet.herokuapp.com/iframe  Chrome
    ${editorContent}=  Get Text  css:#tinymce p
    Should Be Equal  ${editorContent}  Your content goes here.
    Close All Browsers