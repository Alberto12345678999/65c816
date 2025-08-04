import * as vscode from 'vscode';
import { snes65c816DocumentSymbolProvider } from './DocumentSymbolProvider';

export function activateDocumentSymbolProvider(context: vscode.ExtensionContext) {
    const provider = new snes65c816DocumentSymbolProvider();
    context.subscriptions.push(
        vscode.languages.registerDocumentSymbolProvider(
            { language: 'snes65c816' },
            provider
        )
    );
}

// This is the main entry point for the SNES 65C816 extension in Visual Studio Code.
export function activate(context: vscode.ExtensionContext) {
    console.log('Congratulations, your extension "snes-assembly-suite" is now active!');

    activateDocumentSymbolProvider(context);

    // Example of a command registration
    let disposable = vscode.commands.registerCommand('snes-assembly-suite.helloWorld', () => {
        vscode.window.showInformationMessage('Hello World from SNES Assembly Suite!');
    });

    context.subscriptions.push(disposable);
}

export function deactivate() {
    console.log('Extension "snes-assembly-suite" has been deactivated.');
}
