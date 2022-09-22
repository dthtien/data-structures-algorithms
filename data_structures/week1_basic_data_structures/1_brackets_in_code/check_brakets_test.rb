require_relative './check_brackets'
require 'test/unit'

class CheckBrackets < Test::Unit::TestCase
  def test_simple
    test_files.each do |filename|
      puts filename
      text = File.read(filename).strip
      result = File.read("#{filename}.a").strip
      assert_equal(find_mismatch(text), result)
    end
  end

  private

  def test_files
    Dir[
      '/Users/dthtien/Workspace/data-structures-algorithms/data_structures/week1_basic_data_structures/1_brackets_in_code/tests/*'
    ].reject { |file| file.include?('.a') }
  end
end
