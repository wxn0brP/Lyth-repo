declare global {
    namespace globalThis {
        /**
         * Import a module from a package.
         * @param path The path to the module.
         */
        function _import(path: string): Promise<any>;

        /**
         * Import the default export of a module from a package.
         * @param path The path to the module.
         */
        function __import(path: string): Promise<any>;

        /**
         * Import a module from the source code directory.
         * @param path The path to the module.
         */
        function _importSRC(path: string): any;
    }
}

export { }