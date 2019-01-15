*** Settings ***
Documentation    For Exercise #6 get the contents of the TinyMCE WYSIWYG
...              Editor.

Library    SeleniumLibrary

*** Test Cases ***
TinyMCE WYSIWYG Editor
    [Documentation]  The problem is that content lies within a frame.
    ...  We must select the frame first then we can see that element.
    
    Open Browser    http://the-internet.herokuapp.com/iframe  Chrome
    Run Keyword And Expect Error  *  Get Text  css:#tinymce p
    Select Frame    id:mce_0_ifr
    ${editorContent}=  Get Text  css:#tinymce p
    Should Be Equal  ${editorContent}  Your content goes here.
    Close All Browsers