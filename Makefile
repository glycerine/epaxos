all:
	go install ./epaxos-master
	go install ./epaxos-server
	go install ./epaxos-client

run:
	epaxos-master &
	epaxos-server -port 7070 &
	epaxos-server -port 7071 &
	epaxos-server -port 7072 &
	epaxos-client

