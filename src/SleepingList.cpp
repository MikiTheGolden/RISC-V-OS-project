#include "../h/SleepingList.hpp"

void SleepingList::wakeThreads() {
    while (head != nullptr && head->relativeTime == 0){
        Elem* curr = head;
        head = head->next;
        if (!head) { tail = nullptr; }
        if(curr->thread->isSleeping()) {
            curr->thread->setSleepWait(false);
            Scheduler::put(curr->thread);
            delete curr;
        } else if (curr->thread->isTimedWait()){
            curr->thread->setTimedWait(false);
            if(curr->thread->mySem != nullptr){
                curr->thread->mySem->deblockTimedWait(curr->thread);
            }
            delete curr;
        }
    }
}