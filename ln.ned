//
// This file is part of an OMNeT++/OMNEST simulation example.
//
// Copyright (C) 2003-2015 Andras Varga, Rudolf Hornig
//
// This file is distributed WITHOUT ANY WARRANTY. See the file
// `license' for details on this and other legal matters.
//

simple Node
{
    parameters:
        @signal[arrival](type="long");
        @statistic[hopCount](title="hop count"; source="arrival"; record=vector,stats; interpolationmode=none);

        @display("i=block/routing");
    gates:
        inout gate[];
}

network LN
{
    parameters:
        int numCentralNodes = default(4);
    types:
        channel Channel extends ned.DelayChannel {
            delay = 100ms;
        }
    submodules:
        lnd[numCentralNodes+16]: Node;
    connections:
        // connect the 2 nodes in one side to the central nodes
        lnd[0].gate++ <--> Channel <--> lnd[2].gate++;
        lnd[1].gate++ <--> Channel <--> lnd[2].gate++;
        // connect the central nodes together
        for i=2..numCentralNodes+1 {
            lnd[i].gate++ <--> Channel <--> lnd[i+1].gate++;
        }
        // connect the 2 nodes on the other side to the central nodes
        lnd[numCentralNodes+2].gate++ <--> Channel <--> lnd[numCentralNodes+1].gate++;
        lnd[numCentralNodes+3].gate++ <--> Channel <--> lnd[numCentralNodes+1].gate++;
        lnd[numCentralNodes+4].gate++ <--> Channel <--> lnd[numCentralNodes+1].gate++;
        
        lnd[9].gate++ <--> Channel <--> lnd[3].gate++;
        lnd[19].gate++ <--> Channel <--> lnd[3].gate++;
        lnd[10].gate++ <--> Channel <--> lnd[3].gate++;
        
        lnd[11].gate++ <--> Channel <--> lnd[4].gate++;
        lnd[18].gate++ <--> Channel <--> lnd[4].gate++;
        lnd[17].gate++ <--> Channel <--> lnd[4].gate++;
        
        lnd[13].gate++ <--> Channel <--> lnd[17].gate++;
        
        lnd[14].gate++ <--> Channel <--> lnd[9].gate++;
        lnd[10].gate++ <--> Channel <--> lnd[3].gate++;
        lnd[16].gate++ <--> Channel <--> lnd[7].gate++;
        lnd[15].gate++ <--> Channel <--> lnd[0].gate++;
        lnd[12].gate++ <--> Channel <--> lnd[2].gate++;






}