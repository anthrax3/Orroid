# �ǵ����̸� finalize() �޼��带 ������� �ʴ´�.

$parser.node.tour do |node|
	if node.code.include?("finalize()")
		$report.push node
	end
end