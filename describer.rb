require 'ripper'
require 'pp'
require 'byebug'

unless ARGV[0] && File.exist?(ARGV[0])
  puts 'The input file was not specified or does not exist.'
  exit!
end

input_path = ARGV[0]
input_dir = File.dirname(ARGV[0])
input_name = File.basename(ARGV[0], '.rb')
input_code = File.open(input_path).read

output_tokenization_path = "#{input_dir}/#{input_name}.tokens"
output_ast_node_path = "#{input_dir}/#{input_name}.ast_tree"
output_yarv_instructions_path= "#{input_dir}/#{input_name}.yarv"

tokenized_code = Ripper.lex(input_code)
open(output_tokenization_path, 'w') { |f| PP.pp(tokenized_code, f) }

ast_node_tree = Ripper.sexp(input_code)
open(output_ast_node_path, 'w') { |f| PP.pp(ast_node_tree, f) }

yarv_instructions = RubyVM::InstructionSequence.compile(input_code).disasm
open(output_yarv_instructions_path, 'w') {|f| f << yarv_instructions }

