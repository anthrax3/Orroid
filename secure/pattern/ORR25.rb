#
# Thread.run()�޼��带 ȣ������ �ʴ´�.
#

$parser.node.tour do |node|
	if node.code.match(/Thread\(.*\)\.run\(\)/) != nil
		$report.push node
	end
end