# My Setup :computer:

## Coding Stuff ( Requirements )

### Visual Studio Code <\\>

#### Themes ➕ Extensions

 check out this [gist](https://gist.github.com/47b6902a8cb1cdebe1164378448bb784) for that. 

#### :pencil2: Font

I use the font `Anonymous Pro` , `Dank Mono` , `Operator Mono`

The font files are in this repo itself

Also Check out - https://gitlab.com/exorcist365/fonts

## :pancakes: MongoDB

## 💠 Node.js

Get it here:- https://nodejs.org/en/

npm_global modules access - https://docs.npmjs.com/resolving-eacces-permissions-errors-when-installing-packages-globally

**live-server** - `npm i live-server -g`  
**lite-server** - `npm i lite-server -g`  
**create-react-app** - `npm i create-react-app -g` or `npx create-react-app` to spin a react up quickly.

> Note:- Use --use-npm flag with cra if you explicitly want to use npm with cra even if yarn is installed.

**Vue CLI** - `npm install -g @vue/cli`  
**reveal-md** - `npm i -g reveal-md` For presenting with markdown.  
**yarn** - `npm i -g yarn` or `curl -o- -L https://yarnpkg.com/install.sh | bash`  
**vercel** - Deploying with vercel `npm i -g vercel`

Login to vercel

- **tldr** - `npm i -g tldr` and then `tldr update` i guess to update the list -- similar thing to man pages

### **IMPORTANT** **WINDOWS**

https://github.com/yarnpkg/yarn/issues/990  
 SPEED UP NODE | DISABLE AntiVirus ON DEV FOLDER AND NODE AND NPM AND YARN

## Heroku

Get it (CLI ) here:- https://devcenter.heroku.com/articles/heroku-cli
`_netrc` file is for heroku

Do `heroku login`

## :ice_cream: Scoop packages  

Install Scoop ( on windows ) : https://scoop.sh/

### Packages to install  
- bat
- cacert
- cowsay
- figlet
- neofetch
- ripgrep
- starship
- wget

## :zap: Terminal

Windows Terminal :- https://github.com/microsoft/terminal/releases
I use Git Bash as the shell and preferably, starship as the prompt. (on windows )
Git bash comes installed with Git

Get it from the Github repo or the Microsoft Store.

- **Font** - `Anonymous Pro`, `Dank Mono` , `Operator Mono`.
- **Terminal** - Git Bash

## :earth_americas: Chrome

#### Extensions for Chrome

- uBlock Origin
- Stylus
- JSON Viewer
- React DevTools
- Tabliss
- Vue DevTools
- Twitch Auto Bonus

## :coffee: **JDK** Java Development Kit

Download the latest one 

Set the **Path** variable for Java, Visual Studio Code, etc

## 🎁 Other Stuff and programs (Productivity, Wireframing, Chatting etc. )

- **Discord** Get it:- https://discordapp.com/download
- **UELI** app launcher Get it:- https://ueli.app/#/
- **WOX** app launcher Get it:- https://github.com/Wox-launcher/Wox
- **Sumatra PDF** for pdfs Get it:- https://www.sumatrapdfreader.org/download-free-pdf-viewer.html
- **7 Zip** File Compresser Get it here:- https://www.7-zip.org/
- **Everything** Both installer and command line interface (Required by UELI). Get it:- https://www.voidtools.com/downloads/
- **OBS Studio** Record Screen, Stream etc. Get it here:- https://obsproject.com/
- **Python** Just in case Get it:- https://www.python.org/
- **Figma** Wireframing and prototyping. Use in the browser https://www.figma.com/ or download the Desktop Client: https://www.figma.com/downloads/
- **Firefox Developer Edition** I do not use it much but... hey?   
- **ROBO 3T** For mongo dbs
- **Insomnia** https://insomnia.rest/
- **Spotify**
- **Zoom**
- **Telegram**
- **Snapdrop** https://snapdrop.net
- **Notion** https://notion.so/desktop
- **Microsoft ToDo**
- **Microsoft Office**
- **Microsoft Teams**


## Wallpapers  

I am obsessed with wallpapers and therefore like a maniac, i have a wallpapers repo [here](https://github.com/debopamgupta/wallpapers)
Also Check out others like [DT](https://gitlab.com/dwt1/wallpapers) and [Exorcist365](https://gitlab.com/exorcist365/wallpapers)

## Settings.json

```json
{
  "workbench.startupEditor": "none",
  "update.enableWindowsBackgroundUpdates": false,
  "editor.formatOnPaste": true,
  "editor.tabSize": 2,
  "editor.fontFamily": "Roboto Mono",
  "window.dialogStyle": "custom",
  "explorer.decorations.badges": false,
  "workbench.colorCustomizations": {},
  "editor.suggestSelection": "first",
  "java.configuration.checkProjectSettingsExclusions": false,
  "editor.minimap.enabled": false,
  "java.errors.incompleteClasspath.severity": "ignore",
  "[jsonc]": {
    "editor.defaultFormatter": "esbenp.prettier-vscode",
    "editor.formatOnSave": true
  },
  "[javascript]": {
    "editor.defaultFormatter": "esbenp.prettier-vscode",
    "editor.formatOnSave": true
  },
  "[html]": {
    "editor.defaultFormatter": "esbenp.prettier-vscode",
    "editor.formatOnSave": true
  },
  "[json]": {
    "editor.defaultFormatter": "esbenp.prettier-vscode"
  },
  "[vue]": {
    "editor.defaultFormatter": "octref.vetur"
  },
  "[javascriptreact]": {
    "editor.defaultFormatter": "esbenp.prettier-vscode"
  },
  "[typescript]": {
    "editor.defaultFormatter": "esbenp.prettier-vscode"
  },
  "window.autoDetectHighContrast": false,
  "extensions.ignoreRecommendations": true,
  "workbench.tree.indent": 10,
  "debug.console.fontSize": 17,
  "editor.multiCursorModifier": "ctrlCmd",
  // "editor.cursorSmoothCaretAnimation": true,
  "editor.minimap.renderCharacters": false,
  "workbench.tree.renderIndentGuides": "always",
  "editor.formatOnSave": true,
  "window.newWindowDimensions": "maximized",
  "editor.suggestFontSize": 18,
  "explorer.confirmDragAndDrop": false,
  "editor.find.addExtraSpaceOnTop": false,
  "markdown.preview.lineHeight": 1,
  "workbench.editor.enablePreview": false,
  "explorer.confirmDelete": false,
  "javascript.updateImportsOnFileMove.enabled": "always",
  "update.showReleaseNotes": false,
  "telemetry.enableTelemetry": false,
  "files.autoSaveDelay": 0,
  "explorer.incrementalNaming": "smart",
  "editor.fontLigatures": false,
  "terminal.integrated.drawBoldTextInBrightColors": false,
  "editor.wordWrap": "on",
  "editor.wordWrapColumn": 100,
  "java.home": "C:\\Program Files\\Java\\jdk-16.0.1",
  "fontshortcuts.step": 0.1,
  "fontshortcuts.defaultTerminalFontSize": 18,
  "fontshortcuts.defaultFontSize": 20,
  "files.autoSave": "onFocusChange",
  "editor.renderWhitespace": "none",
  "java.semanticHighlighting.enabled": true,
  "editor.cursorBlinking": "smooth",
  "editor.tokenColorCustomizations": {},
  "editor.linkedEditing": true,
  "editor.formatOnType": true,
  "terminal.integrated.fontWeight": "400",
  "editor.renderLineHighlight": "gutter",
  "git.confirmSync": false,
  "editor.fontWeight": "400",
  "editor.fontSize": 18,
  "workbench.editorAssociations": {
    "*.ipynb": "jupyter.notebook.ipynb"
  },
  "terminal.integrated.defaultProfile.windows": "Git Bash",
  "workbench.settings.openDefaultKeybindings": true,
  "terminal.integrated.tabs.enabled": true,
  "terminal.integrated.cursorBlinking": true,
  "window.title": "${folderName} ${separator} ${appName}",
  "editor.inlineSuggest.enabled": true,
  "workbench.iconTheme": "material-icon-theme",
  "settingsSync.ignoredExtensions": ["emroussel.atomize-atom-one-dark-theme"],
  "security.workspace.trust.untrustedFiles": "open",
  "editor.bracketPairColorization.enabled": true,
  "editor.suggest.preview": true,
  "thunder-client.codeSnippetLanguage": "js-fetch",
  "window.zoomLevel": -0.8,
  "terminal.integrated.fontSize": 16,
  "workbench.colorTheme": "Cobalt2"
}

```


## Keybindings JSON

```json
// Place your key bindings in this file to override the defaults
[
  {
    "key": "ctrl+shift+/",
    "command": "editor.action.blockComment",
    "when": "editorTextFocus"
  },
  { "key": "ctrl+n", "command": "extension.advancedNewFile" },
  {
    "key": "ctrl+0",
    "command": "-workbench.action.zoomReset"
  },
  {
    "key": "ctrl+numpad_add",
    "command": "-workbench.action.zoomIn"
  },
  {
    "key": "ctrl+-",
    "command": "-workbench.action.zoomOut"
  },
  {
    "key": "ctrl+shift+-",
    "command": "-workbench.action.zoomOut"
  },
  {
    "key": "ctrl+numpad_subtract",
    "command": "-workbench.action.zoomOut"
  },
  {
    "key": "ctrl+numpad_add",
    "command": "editor.action.fontZoomIn"
  },
  {
    "key": "ctrl+numpad_subtract",
    "command": "editor.action.fontZoomOut"
  },
  {
    "key": "ctrl+numpad0",
    "command": "editor.action.fontZoomReset"
  },
  {
    "key": "ctrl+tab",
    "command": "workbench.action.terminal.focusNext",
    "when": "terminalFocus"
  },

  {
    "key": "ctrl+w",
    "command": "workbench.action.terminal.kill",
    "when": "terminalFocus"
  },

  {
    "key": "ctrl+n",
    "command": "workbench.action.terminal.new",
    "when": "terminalFocus"
  }
]

```
