#
# �����Ǿ��ų� ������ ������ class�� method������� �ʱ�
#

not_allowed = [
"java.util.Date",
"java.util.Dictionary",
"java.lang.ThreadGroup"
]

$parser.node.filter( NodeType::Import ) do |node|
	
	if not_allowed.member?( node.package ) == true
		$report.push node
	end

end