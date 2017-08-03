all:
	go install ./epaxos-master
	go install ./epaxos-server
	go install ./epaxos-client

run:
	epaxos-master &
	epaxos-server -e -port 7070 &
	epaxos-server -e -port 7071 &
	epaxos-server -e -port 7072 &
	sleep 5; epaxos-client -e -check -q 10000 -w 50 

clean:
	rm -rf stable-store-replica0
	rm -rf stable-store-replica1
	rm -rf stable-store-replica2
	pkill -9 epaxos-master epaxos-server epaxos-client || true
