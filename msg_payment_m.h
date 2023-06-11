//
// Generated file, do not edit! Created by opp_msgtool 6.0 from msg_payment.msg.
//

#ifndef __MSG_PAYMENT_M_H
#define __MSG_PAYMENT_M_H

#if defined(__clang__)
#  pragma clang diagnostic ignored "-Wreserved-id-macro"
#endif
#include <omnetpp.h>

// opp_msgtool version check
#define MSGC_VERSION 0x0600
#if (MSGC_VERSION!=OMNETPP_VERSION)
#    error Version mismatch! Probably this file was generated by an earlier version of opp_msgtool: 'make clean' should help.
#endif

class Msg_Payment;
/**
 * Class generated from <tt>msg_payment.msg:17</tt> by opp_msgtool.
 * <pre>
 * message Msg_Payment
 * {
 *     int source;
 *     int destination;
 *     int hopCount = 0;
 * }
 * </pre>
 */
class Msg_Payment : public ::omnetpp::cMessage
{
  protected:
    int source = 0;
    int destination = 0;
    int hopCount = 0;

  private:
    void copy(const Msg_Payment& other);

  protected:
    bool operator==(const Msg_Payment&) = delete;

  public:
    Msg_Payment(const char *name=nullptr, short kind=0);
    Msg_Payment(const Msg_Payment& other);
    virtual ~Msg_Payment();
    Msg_Payment& operator=(const Msg_Payment& other);
    virtual Msg_Payment *dup() const override {return new Msg_Payment(*this);}
    virtual void parsimPack(omnetpp::cCommBuffer *b) const override;
    virtual void parsimUnpack(omnetpp::cCommBuffer *b) override;

    virtual int getSource() const;
    virtual void setSource(int source);

    virtual int getDestination() const;
    virtual void setDestination(int destination);

    virtual int getHopCount() const;
    virtual void setHopCount(int hopCount);
};

inline void doParsimPacking(omnetpp::cCommBuffer *b, const Msg_Payment& obj) {obj.parsimPack(b);}
inline void doParsimUnpacking(omnetpp::cCommBuffer *b, Msg_Payment& obj) {obj.parsimUnpack(b);}


namespace omnetpp {

template<> inline Msg_Payment *fromAnyPtr(any_ptr ptr) { return check_and_cast<Msg_Payment*>(ptr.get<cObject>()); }

}  // namespace omnetpp

#endif // ifndef __MSG_PAYMENT_M_H

