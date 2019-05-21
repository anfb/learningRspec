# learningRspec
I created this repository to learn about unit test using rspec

## Get Started!
### Instalations
* We need to install [ruby](https://rubyinstaller.org/downloads/) on windows (Sorry I use windows rsrs)
please, download the recommendation version with devkit.

> **Attention!**  close any prompt before instalation

after install ruby execute the following command:
```
ridk install 
```
* We need to install Console Emulator([Cmder](https://cmder.net/)) 
* We need use any text editor, I'll use the Visual Studio Code [VScode](https://code.visualstudio.com/)

### first step 
Open the Cmder and type the command to create a new folder:
```
mkdir learningRspec
```
Inside folder learningRspec, create a new folder called unitTest:
```
cd learningRspec
```
```
mkdir unitTest
```
then inside the new folder, type the command:
```
bundle init
``` 
The command "bundle init" will initialize a ruby project and create a file called Gemfile

Inside Gemfile write the text bellow: 
```ruby
source "https://rubygems.org"

gem 'rspec'
```
Now we need type the command in Cmder:
```
bundle install
``` 
### Now we going to create the estructure to use the RSpec

inside folder unitTest type the command:
```
rspec --init
``` 
So... In new folder created by RSpec 'unitTest\ *spec*', we must to create a new file called example_spec.rb. Inside example_spec.rb we'll create our scenarios:

```ruby
describe 'suit rspec' do 
    it 'sum of values' do
        sum = 10 + 5
        expect(sum).to eql 15
    end
    it 'soma de valores string' do
        soma = 10 + 5
        expect(soma.to_s).to eql '15'
    end
end
```

