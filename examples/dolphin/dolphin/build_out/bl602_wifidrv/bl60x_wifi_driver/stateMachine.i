# 1 "/b-l/bl_iot_sdk_new/components/bl602/bl602_wifidrv/bl60x_wifi_driver/stateMachine.c"
# 1 "/b-l/dolphin/build_out/bl602_wifidrv//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/b-l/bl_iot_sdk_new/components/bl602/bl602_wifidrv/bl60x_wifi_driver/stateMachine.c"
# 57 "/b-l/bl_iot_sdk_new/components/bl602/bl602_wifidrv/bl60x_wifi_driver/stateMachine.c"
# 1 "/b-l/bl_iot_sdk_new/components/bl602/bl602_wifidrv/bl60x_wifi_driver/stateMachine.h" 1
# 103 "/b-l/bl_iot_sdk_new/components/bl602/bl602_wifidrv/bl60x_wifi_driver/stateMachine.h"
# 1 "/b-l/bl_iot_sdk_new/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/8.3.0/include/stddef.h" 1 3 4
# 149 "/b-l/bl_iot_sdk_new/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/8.3.0/include/stddef.h" 3 4

# 149 "/b-l/bl_iot_sdk_new/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/8.3.0/include/stddef.h" 3 4
typedef int ptrdiff_t;
# 216 "/b-l/bl_iot_sdk_new/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/8.3.0/include/stddef.h" 3 4
typedef unsigned int size_t;
# 328 "/b-l/bl_iot_sdk_new/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/8.3.0/include/stddef.h" 3 4
typedef int wchar_t;
# 104 "/b-l/bl_iot_sdk_new/components/bl602/bl602_wifidrv/bl60x_wifi_driver/stateMachine.h" 2
# 1 "/b-l/bl_iot_sdk_new/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/8.3.0/include/stdbool.h" 1 3 4
# 105 "/b-l/bl_iot_sdk_new/components/bl602/bl602_wifidrv/bl60x_wifi_driver/stateMachine.h" 2
# 116 "/b-l/bl_iot_sdk_new/components/bl602/bl602_wifidrv/bl60x_wifi_driver/stateMachine.h"

# 116 "/b-l/bl_iot_sdk_new/components/bl602/bl602_wifidrv/bl60x_wifi_driver/stateMachine.h"
struct event
{

   int type;







   void *data;
};

struct state;
# 187 "/b-l/bl_iot_sdk_new/components/bl602/bl602_wifidrv/bl60x_wifi_driver/stateMachine.h"
struct transition
{

   int eventType;
# 199 "/b-l/bl_iot_sdk_new/components/bl602/bl602_wifidrv/bl60x_wifi_driver/stateMachine.h"
   void *condition;
# 214 "/b-l/bl_iot_sdk_new/components/bl602/bl602_wifidrv/bl60x_wifi_driver/stateMachine.h"
   
# 214 "/b-l/bl_iot_sdk_new/components/bl602/bl602_wifidrv/bl60x_wifi_driver/stateMachine.h" 3 4
  _Bool 
# 214 "/b-l/bl_iot_sdk_new/components/bl602/bl602_wifidrv/bl60x_wifi_driver/stateMachine.h"
       ( *guard )( void *condition, struct event *event );
# 227 "/b-l/bl_iot_sdk_new/components/bl602/bl602_wifidrv/bl60x_wifi_driver/stateMachine.h"
   void ( *action )( void *currentStateData, struct event *event,
         void *newStateData );







   const struct state *nextState;
};
# 320 "/b-l/bl_iot_sdk_new/components/bl602/bl602_wifidrv/bl60x_wifi_driver/stateMachine.h"
struct state
{



   const struct state *parentState;




   const struct state *entryState;



   struct transition *transitions;



   size_t numTransitions;




   void *data;
# 357 "/b-l/bl_iot_sdk_new/components/bl602/bl602_wifidrv/bl60x_wifi_driver/stateMachine.h"
   void ( *entryAction )( void *stateData, struct event *event );
# 368 "/b-l/bl_iot_sdk_new/components/bl602/bl602_wifidrv/bl60x_wifi_driver/stateMachine.h"
   void ( *exitAction )( void *stateData, struct event *event );
};






struct stateMachine
{

   const struct state *currentState;






   const struct state *previousState;







   const struct state *errorState;
};
# 418 "/b-l/bl_iot_sdk_new/components/bl602/bl602_wifidrv/bl60x_wifi_driver/stateMachine.h"
void stateM_init( struct stateMachine *stateMachine,
      const struct state *initialState, const struct state *errorState );




enum stateM_handleEventRetVals
{

   stateM_errArg = -2,
# 440 "/b-l/bl_iot_sdk_new/components/bl602/bl602_wifidrv/bl60x_wifi_driver/stateMachine.h"
   stateM_errorStateReached,

   stateM_stateChanged,







   stateM_stateLoopSelf,






   stateM_noStateChange,

   stateM_finalStateReached,
};
# 481 "/b-l/bl_iot_sdk_new/components/bl602/bl602_wifidrv/bl60x_wifi_driver/stateMachine.h"
int stateM_handleEvent( struct stateMachine *stateMachine,
      struct event *event );
# 492 "/b-l/bl_iot_sdk_new/components/bl602/bl602_wifidrv/bl60x_wifi_driver/stateMachine.h"
const struct state *stateM_currentState( struct stateMachine *stateMachine );
# 503 "/b-l/bl_iot_sdk_new/components/bl602/bl602_wifidrv/bl60x_wifi_driver/stateMachine.h"
const struct state *stateM_previousState( struct stateMachine *stateMachine );
# 514 "/b-l/bl_iot_sdk_new/components/bl602/bl602_wifidrv/bl60x_wifi_driver/stateMachine.h"

# 514 "/b-l/bl_iot_sdk_new/components/bl602/bl602_wifidrv/bl60x_wifi_driver/stateMachine.h" 3 4
_Bool 
# 514 "/b-l/bl_iot_sdk_new/components/bl602/bl602_wifidrv/bl60x_wifi_driver/stateMachine.h"
    stateM_stopped( struct stateMachine *stateMachine );
# 58 "/b-l/bl_iot_sdk_new/components/bl602/bl602_wifidrv/bl60x_wifi_driver/stateMachine.c" 2

static void goToErrorState( struct stateMachine *stateMachine,
      struct event *const event );
static struct transition *getTransition( struct stateMachine *stateMachine,
      const struct state *state, struct event *const event );

void stateM_init( struct stateMachine *fsm,
      const struct state *initialState, const struct state *errorState )
{
   if ( !fsm )
      return;

   fsm->currentState = initialState;
   fsm->previousState = 
# 71 "/b-l/bl_iot_sdk_new/components/bl602/bl602_wifidrv/bl60x_wifi_driver/stateMachine.c" 3 4
                       ((void *)0)
# 71 "/b-l/bl_iot_sdk_new/components/bl602/bl602_wifidrv/bl60x_wifi_driver/stateMachine.c"
                           ;
   fsm->errorState = errorState;
}

int stateM_handleEvent( struct stateMachine *fsm,
      struct event *event )
{
   if ( !fsm || !event )
      return stateM_errArg;

   if ( !fsm->currentState )
   {
      goToErrorState( fsm, event );
      return stateM_errorStateReached;
   }

   if ( !fsm->currentState->numTransitions )
      return stateM_noStateChange;

   const struct state *nextState = fsm->currentState;
   do {
      struct transition *transition = getTransition( fsm, nextState, event );




      if ( !transition )
      {
         nextState = nextState->parentState;
         continue;
      }



      if ( !transition->nextState )
      {
         goToErrorState( fsm, event );
         return stateM_errorStateReached;
      }

      nextState = transition->nextState;




      while ( nextState->entryState )
         nextState = nextState->entryState;



      if ( nextState != fsm->currentState && fsm->currentState->exitAction )
         fsm->currentState->exitAction( fsm->currentState->data, event );


      if ( transition->action )
         transition->action( fsm->currentState->data, event, nextState->
               data );



      if ( nextState != fsm->currentState && nextState->entryAction )
         nextState->entryAction( nextState->data, event );

      fsm->previousState = fsm->currentState;
      fsm->currentState = nextState;


      if ( fsm->currentState == fsm->previousState )
         return stateM_stateLoopSelf;

      if ( fsm->currentState == fsm->errorState )
         return stateM_errorStateReached;



      if ( !fsm->currentState->numTransitions )
         return stateM_finalStateReached;

      return stateM_stateChanged;
   } while ( nextState );

   return stateM_noStateChange;
}

const struct state *stateM_currentState( struct stateMachine *fsm )
{
   if ( !fsm )
      return 
# 158 "/b-l/bl_iot_sdk_new/components/bl602/bl602_wifidrv/bl60x_wifi_driver/stateMachine.c" 3 4
            ((void *)0)
# 158 "/b-l/bl_iot_sdk_new/components/bl602/bl602_wifidrv/bl60x_wifi_driver/stateMachine.c"
                ;

   return fsm->currentState;
}

const struct state *stateM_previousState( struct stateMachine *fsm )
{
   if ( !fsm )
      return 
# 166 "/b-l/bl_iot_sdk_new/components/bl602/bl602_wifidrv/bl60x_wifi_driver/stateMachine.c" 3 4
            ((void *)0)
# 166 "/b-l/bl_iot_sdk_new/components/bl602/bl602_wifidrv/bl60x_wifi_driver/stateMachine.c"
                ;

   return fsm->previousState;
}


static void goToErrorState( struct stateMachine *fsm,
      struct event *const event )
{
   fsm->previousState = fsm->currentState;
   fsm->currentState = fsm->errorState;

   if ( fsm->currentState && fsm->currentState->entryAction )
      fsm->currentState->entryAction( fsm->currentState->data, event );
}

static struct transition *getTransition( struct stateMachine *fsm,
      const struct state *state, struct event *const event )
{
   size_t i;

   for ( i = 0; i < state->numTransitions; ++i )
   {
      struct transition *t = &state->transitions[ i ];


      if ( t->eventType == event->type )
      {
         if ( !t->guard )
            return t;

         else if ( t->guard( t->condition, event ) )
            return t;
      }
   }


   return 
# 203 "/b-l/bl_iot_sdk_new/components/bl602/bl602_wifidrv/bl60x_wifi_driver/stateMachine.c" 3 4
         ((void *)0)
# 203 "/b-l/bl_iot_sdk_new/components/bl602/bl602_wifidrv/bl60x_wifi_driver/stateMachine.c"
             ;
}


# 206 "/b-l/bl_iot_sdk_new/components/bl602/bl602_wifidrv/bl60x_wifi_driver/stateMachine.c" 3 4
_Bool 
# 206 "/b-l/bl_iot_sdk_new/components/bl602/bl602_wifidrv/bl60x_wifi_driver/stateMachine.c"
    stateM_stopped( struct stateMachine *stateMachine )
{
   if ( !stateMachine )
      return 
# 209 "/b-l/bl_iot_sdk_new/components/bl602/bl602_wifidrv/bl60x_wifi_driver/stateMachine.c" 3 4
            1
# 209 "/b-l/bl_iot_sdk_new/components/bl602/bl602_wifidrv/bl60x_wifi_driver/stateMachine.c"
                ;

   return stateMachine->currentState->numTransitions == 0;
}
