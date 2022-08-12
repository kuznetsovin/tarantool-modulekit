## Cartridge UI kit

## Usage

1. Clone this repository and switch to the `cartridge-uikit` branch.

   ```bash
   mkdir project_name
   git clone https://github.com/kuznetsovin/tarantool-modulekit.git project_name
   
   cd project_name
   git fetch origin
   git checkout -b ckit origin/cartridge-uikit
   ```
2. Rename all files to use your project name. For exmaple `test_ui`
   ```bash
   grep -R uikit .
   mv uikit.lua test_ui.lua
   ```
2. Install dependencies
   ```
   npm i
   ```
3. Start application 
   
   ```
   npm run start
   ```

4. Create your `tsx` components and import them to `src/index.js`. 

5. For generate bundle run commad:

   ```
   tarantoolctl rocks make
   ```
   
## useful links

* [Tarantool UI Components Kit](https://tarantool.github.io/front-ui-kit/)

## Examples

* [Tarantool Cartridge WebUI GraphQL IDE](https://github.com/tarantool/graphqlide)

