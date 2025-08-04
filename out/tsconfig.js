"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.tsconfig = void 0;
exports.tsconfig = {
    compilerOptions: {
        target: "ES2020",
        module: "commonjs",
        outDir: "./out",
        rootDir: "./",
        strict: true,
        esModuleInterop: true,
        skipLibCheck: true
    },
    include: ["**/*.ts"],
    exclude: ["node_modules", "out"]
};
