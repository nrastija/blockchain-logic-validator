
:-(compiler_options([xpp_on,canonical])).

/********** Tabling and Trailer Control Variables ************/

#define EQUALITYnone
#define INHERITANCEflogic
#define TABLINGreactive
#define TABLINGvariant
#define CUSTOMnone

#define FLORA_INCREMENTAL_TABLING 

/************************************************************************
  file: headerinc/flrheader_inc.flh

  Author(s): Guizhen Yang

  This file is automatically included by the Flora-2 compiler.
************************************************************************/

:-(compiler_options([xpp_on])).
#mode standard Prolog

#include "flrheader.flh"
#include "flora_porting.flh"

/***********************************************************************/

/************************************************************************
  file: headerinc/flrheader_prog_inc.flh

  Author(s): Michael Kifer

  This file is automatically included by the Flora-2 compiler.
************************************************************************/

:-(compiler_options([xpp_on])).
#mode standard Prolog

#include "flrheader_prog.flh"

/***********************************************************************/

#define FLORA_COMPILATION_ID 8

/************************************************************************
  file: headerinc/flrheader2_inc.flh

  Author(s): Michael Kifer

  This file is automatically included by the Flora-2 compiler.
  It has files that must be included in the header and typically
  contain some Prolog statements. Such files cannot appear
  in flrheader.flh because flrheader.flh is included in various restricted
  contexts where Prolog statements are not allowed.

  NOT included in ADDED files (compiled for addition) -- only in LOADED
  ones and in trailers/patch
************************************************************************/

:-(compiler_options([xpp_on])).

#define TABLING_CONNECTIVE  :-

%% flora_tabling_methods is included here to affect preprocessing of
%% flrtable/flrhilogtable.flh dynamically
#include "flora_tabling_methods.flh"

/* note: inside flrtable.flh there are checks for FLORA_NONTABLED_DATA_MODULE
   that exclude tabling non-signature molecules
*/
#ifndef FLORA_NONTABLED_MODULE
#include "flrtable.flh"
#endif

/* if normal tabled module, then table hilog */
#if !defined(FLORA_NONTABLED_DATA_MODULE) && !defined(FLORA_NONTABLED_MODULE)
#include "flrhilogtable.flh"
#endif

#include "flrtable_always.flh"

#include "flrauxtables.flh"

%% include list of tabled predicates
#mode save
#mode nocomment "%"
#if defined(FLORA_FLT_FILENAME)
#include FLORA_FLT_FILENAME
#endif
#mode restore

/***********************************************************************/

/************************************************************************
  file: headerinc/flrdyna_inc.flh

  Author(s): Chang Zhao

  This file is automatically included by the Flora-2 compiler.
************************************************************************/

:-(compiler_options([xpp_on])).

#define TABLING_CONNECTIVE  :-

#include "flrdyndeclare.flh"

/***********************************************************************/

/************************************************************************
  file: headerinc/flrindex_P_inc.flh

  Author(s): Michael Kifer

  This file is automatically included by the Flora-2 compiler.
************************************************************************/

:-(compiler_options([xpp_on])).

#include "flrindex_P.flh"

/***********************************************************************/

#mode save
#mode nocomment "%"
#define FLORA_THIS_FILENAME  'queries.flr'
#mode restore
/************************************************************************
  file: headerinc/flrdefinition_inc.flh

  Author(s): Guizhen Yang

  This file is automatically included by the Flora-2 compiler.
************************************************************************/

#include "flrdefinition.flh"

/***********************************************************************/

/************************************************************************
  file: headerinc/flrtrailerregistry_inc.flh

  Author(s): Michael Kifer

  This file is automatically included by the Flora-2 compiler.
************************************************************************/

#include "flrtrailerregistry.flh"

/***********************************************************************/

/************************************************************************
  file: headerinc/flrrefreshtable_inc.flh

  Author(s): Michael Kifer

  This file is automatically included by the Flora-2 compiler.
************************************************************************/

:-(compiler_options([xpp_on])).

#include "flrrefreshtable.flh"

/***********************************************************************/

/************************************************************************
  file: headerinc/flrdynamic_connectors_inc.flh

  Author(s): Michael Kifer

  This file is automatically included by the Flora-2 compiler.
************************************************************************/

:-(compiler_options([xpp_on])).

#include "flrdynamic_connectors.flh"

/***********************************************************************/

/************************************************************************
  file: syslibinc/flrimportedcalls_inc.flh

  Author(s): Michael Kifer

  This file is automatically included by the FLORA-2 compiler.
************************************************************************/

%% Loads the file with all the import statements for predicates
%% that must be known everywhere

:-(compiler_options([xpp_on])).

#mode standard Prolog

#if !defined(FLORA_TERMS_FLH)
#define FLORA_TERMS_FLH
#include "flora_terms.flh"
#endif

?-(:(flrlibman,flora_load_library(FLLIBIMPORTEDCALLS))).

/***********************************************************************/

/************************************************************************
  file: headerinc/flrpatch_inc.flh

  Author(s): Guizhen Yang

  This file is automatically included by the Flora-2 compiler.
************************************************************************/

#include "flrexportcheck.flh"
#include "flrpatch.flh"
/***********************************************************************/

/************************************************************************
  file: headerinc/flropposes_inc.flh

  Author(s): Michael Kifer

  This file is automatically included by the Flora-2 compiler.
************************************************************************/

#include "flropposes.flh"

/***********************************************************************/

/************************************************************************
  file: headerinc/flrhead_dispatch_inc.flh

  Author(s): Michael Kifer

  This file is automatically included by the Flora-2 compiler.
************************************************************************/

:-(compiler_options([xpp_on])).

#include "flrhead_dispatch.flh"

/***********************************************************************/

/************************************************************************
  file: syslibinc/flrclause_inc.flh

  Author(s): Chang Zhao

  This file is automatically included by the FLORA-2 compiler.
************************************************************************/

:-(compiler_options([xpp_on])).

#mode standard Prolog

#if !defined(FLORA_TERMS_FLH)
#define FLORA_TERMS_FLH
#include "flora_terms.flh"
#endif

?-(:(flrlibman,flora_load_library(FLLIBCLAUSE))).

/***********************************************************************/

/************************************************************************
  file: libinc/flrio_inc.flh

  Author(s): Guizhen Yang

  This file is automatically included by the Flora-2 compiler.
************************************************************************/

:-(compiler_options([xpp_on])).

#mode standard Prolog

#if !defined(FLORA_TERMS_FLH)
#define FLORA_TERMS_FLH
#include "flora_terms.flh"
#endif

?-(':'(flrlibman,flora_load_system_module(FLSYSMODIO))).

/***********************************************************************/

 
#if !defined(FLORA_FLM_FILENAME)
#if !defined(FLORA_LOADDYN_DATA)
#define FLORA_LOADDYN_DATA
#endif
#mode save
#mode nocomment "%"
#define FLORA_FLM_FILENAME  'queries.flm'
#mode restore
?-(:(flrutils,flora_loaddyn_data(FLORA_FLM_FILENAME,FLORA_THIS_MODULE_NAME,'flm'))).
#else
#if !defined(FLORA_READ_CANONICAL_AND_INSERT)
#define FLORA_READ_CANONICAL_AND_INSERT
#endif
?-(:(flrutils,flora_read_descriptor_metafacts_canonical_and_insert(queries,_ErrNum))).
#endif

 
#if !defined(FLORA_FLD_FILENAME)
#if !defined(FLORA_LOADDYN_DATA)
#define FLORA_LOADDYN_DATA
#endif
#mode save
#mode nocomment "%"
#define FLORA_FLD_FILENAME  'queries.fld'
#mode restore
?-(:(flrutils,flora_loaddyn_data(FLORA_FLD_FILENAME,FLORA_THIS_MODULE_NAME,'fld'))).
#else
#if !defined(FLORA_READ_CANONICAL_AND_INSERT)
#define FLORA_READ_CANONICAL_AND_INSERT
#endif
?-(:(flrutils,flora_read_canonical_and_insert(FLORA_FLD_FILENAME,FLORA_THIS_FLD_STORAGE))).
#endif

 
#if !defined(FLORA_FLS_FILENAME)
#if !defined(FLORA_LOADDYN_DATA)
#define FLORA_LOADDYN_DATA
#endif
#mode save
#mode nocomment "%"
#define FLORA_FLS_FILENAME  'queries.fls'
#mode restore
?-(:(flrutils,flora_loaddyn_data(FLORA_FLS_FILENAME,FLORA_THIS_MODULE_NAME,'fls'))).
#else
#if !defined(FLORA_READ_CANONICAL_AND_INSERT)
#define FLORA_READ_CANONICAL_AND_INSERT
#endif
?-(:(flrutils,flora_read_symbols_canonical_and_insert(FLORA_FLS_FILENAME,FLORA_THIS_FLS_STORAGE,_SymbolErrNum))).
#endif


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Rules %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

:-(FLORA_THIS_WORKSPACE(static^tblflapply)(help,'_$ctxt'(_CallerModuleVar,4,__newcontextvar1)),','('_$_$_flora''rule_enabled'(4,'queries.flr',FLORA_THIS_MODULE_NAME),','(FLORA_WORKSPACE(\\io,d^tblflapply)(nl,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,4)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(write,'Available queries:','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar3,4)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(nl,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar4,4)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(nl,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar5,4)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(write,'Validation:','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar6,4)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(nl,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar7,4)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(write,'  valid_transaction(tx1)','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar8,4)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(nl,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar9,4)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(write,'  diagnose_transaction(tx3, ?Problem)','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar10,4)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(nl,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar11,4)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(nl,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar12,4)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(write,'Addresses:','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar13,4)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(nl,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar14,4)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(write,'  marko:address[balance -> ?B]','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar15,4)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(nl,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar16,4)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(nl,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar17,4)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(write,'Transactions:','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar18,4)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(nl,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar19,4)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(write,'  ?Tx:transaction[sender_address -> marko]','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar20,4)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(nl,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar21,4)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(nl,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar22,4)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(write,'Analysis:','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar23,4)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(nl,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar24,4)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(write,'  all_valid_transactions(?List)','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar25,4)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(nl,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar26,4)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(write,'  network_health(?T, ?V, ?I, ?S)','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar27,4)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(nl,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar28,4)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(nl,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar29,4)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(write,'Blocks:','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar30,4)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(nl,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar31,4)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(write,'  valid_block_transactions(block1)','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar32,4)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(nl,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar33,4)),FLORA_WORKSPACE(\\io,d^tblflapply)(nl,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar34,4)))))))))))))))))))))))))))))))))))).
:-(FLORA_THIS_WORKSPACE(static^tblflapply)(quick_test,'_$ctxt'(_CallerModuleVar,6,__newcontextvar1)),','('_$_$_flora''rule_enabled'(6,'queries.flr',FLORA_THIS_MODULE_NAME),','(','(FLORA_WORKSPACE(\\io,d^tblflapply)(nl,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,6)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(write,'Running tests...','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar3,6)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(nl,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar4,6)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(nl,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar5,6)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(write,'Test 1: tx1 should be valid','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar6,6)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(nl,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar7,6)),','(';'(','(FLORA_THIS_WORKSPACE(d^tblflapply)(valid_transaction,tx1,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar8,6)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(write,'  PASS','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar9,6)),!)),FLORA_WORKSPACE(\\io,d^tblflapply)(write,'  FAIL','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar10,6))),','(FLORA_WORKSPACE(\\io,d^tblflapply)(nl,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar11,6)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(nl,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar12,6)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(write,'Test 2: tx3 should be invalid (insufficient funds)','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar13,6)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(nl,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar14,6)),','(';'(','(flibnafdelay(flora_naf(FLORA_THIS_WORKSPACE(tabled_naf_call)(','(FLORA_THIS_WORKSPACE(d^tblflapply)(valid_transaction,tx3,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar15,6)),fllibexecute_delayed_calls([],[]))),[],104,'queries.flr')),','(FLORA_WORKSPACE(\\io,d^tblflapply)(write,'  PASS','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar16,6)),!)),FLORA_WORKSPACE(\\io,d^tblflapply)(write,'  FAIL','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar17,6))),','(FLORA_WORKSPACE(\\io,d^tblflapply)(nl,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar18,6)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(diagnose_transaction,tx3,__Problem3,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar19,6)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(write,'  Reason: ','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar20,6)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(write,__Problem3,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar21,6)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(nl,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar22,6)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(nl,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar23,6)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(write,'Test 3: tx4 should be invalid (negative amount)','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar24,6)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(nl,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar25,6)),','(';'(','(flibnafdelay(flora_naf(FLORA_THIS_WORKSPACE(tabled_naf_call)(','(FLORA_THIS_WORKSPACE(d^tblflapply)(valid_transaction,tx4,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar26,6)),fllibexecute_delayed_calls([],[]))),[],116,'queries.flr')),','(FLORA_WORKSPACE(\\io,d^tblflapply)(write,'  PASS','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar27,6)),!)),FLORA_WORKSPACE(\\io,d^tblflapply)(write,'  FAIL','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar28,6))),','(FLORA_WORKSPACE(\\io,d^tblflapply)(nl,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar29,6)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(diagnose_transaction,tx4,__Problem4,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar30,6)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(write,'  Reason: ','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar31,6)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(write,__Problem4,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar32,6)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(nl,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar33,6)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(nl,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar34,6)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(write,'Test 4: Network health','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar35,6)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(nl,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar36,6)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(network_health,__Total,__Valid,__Invalid,__Score,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar37,6)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(write,'  Total: ','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar38,6)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(write,__Total,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar39,6)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(nl,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar40,6)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(write,'  Valid: ','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar41,6)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(write,__Valid,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar42,6)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(nl,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar43,6)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(write,'  Invalid: ','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar44,6)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(write,__Invalid,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar45,6)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(nl,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar46,6)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(write,'  Score: ','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar47,6)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(write,__Score,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar48,6)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(write,'%','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar49,6)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(nl,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar50,6)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(nl,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar51,6)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(write,'Tests completed','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar52,6)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(nl,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar53,6)),FLORA_WORKSPACE(\\io,d^tblflapply)(nl,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar54,6)))))))))))))))))))))))))))))))))))))))))))))))),fllibexecute_delayed_calls([__Invalid,__Problem3,__Problem4,__Score,__Total,__Valid],[])))).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Rule signatures %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

?-(fllibinsrulesig(4,'queries.flr','_$_$_flora''descr_vars',FLORA_THIS_MODULE_NAME,3,FLORA_THIS_WORKSPACE(d^tblflapply)(help,'_$ctxt'(_CallerModuleVar,4,__newcontextvar1)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(nl,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,4)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(write,'Available queries:','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar3,4)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(nl,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar4,4)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(nl,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar5,4)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(write,'Validation:','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar6,4)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(nl,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar7,4)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(write,'  valid_transaction(tx1)','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar8,4)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(nl,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar9,4)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(write,'  diagnose_transaction(tx3, ?Problem)','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar10,4)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(nl,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar11,4)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(nl,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar12,4)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(write,'Addresses:','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar13,4)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(nl,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar14,4)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(write,'  marko:address[balance -> ?B]','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar15,4)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(nl,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar16,4)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(nl,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar17,4)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(write,'Transactions:','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar18,4)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(nl,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar19,4)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(write,'  ?Tx:transaction[sender_address -> marko]','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar20,4)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(nl,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar21,4)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(nl,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar22,4)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(write,'Analysis:','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar23,4)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(nl,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar24,4)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(write,'  all_valid_transactions(?List)','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar25,4)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(nl,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar26,4)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(write,'  network_health(?T, ?V, ?I, ?S)','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar27,4)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(nl,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar28,4)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(nl,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar29,4)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(write,'Blocks:','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar30,4)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(nl,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar31,4)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(write,'  valid_block_transactions(block1)','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar32,4)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(nl,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar33,4)),FLORA_WORKSPACE(\\io,d^tblflapply)(nl,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar34,4)))))))))))))))))))))))))))))))))),null,'_$_$_flora''rule_enabled'(4,'queries.flr',FLORA_THIS_MODULE_NAME),null,true)).
?-(fllibinsrulesig(6,'queries.flr','_$_$_flora''descr_vars',FLORA_THIS_MODULE_NAME,4,FLORA_THIS_WORKSPACE(d^tblflapply)(quick_test,'_$ctxt'(_CallerModuleVar,6,__newcontextvar1)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(nl,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,6)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(write,'Running tests...','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar3,6)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(nl,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar4,6)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(nl,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar5,6)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(write,'Test 1: tx1 should be valid','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar6,6)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(nl,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar7,6)),','(';'(','(FLORA_THIS_WORKSPACE(d^tblflapply)(valid_transaction,tx1,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar8,6)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(write,'  PASS','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar9,6)),!)),FLORA_WORKSPACE(\\io,d^tblflapply)(write,'  FAIL','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar10,6))),','(FLORA_WORKSPACE(\\io,d^tblflapply)(nl,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar11,6)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(nl,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar12,6)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(write,'Test 2: tx3 should be invalid (insufficient funds)','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar13,6)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(nl,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar14,6)),','(';'(','(flibnafdelay(flora_naf(FLORA_THIS_WORKSPACE(tabled_naf_call)(','(FLORA_THIS_WORKSPACE(d^tblflapply)(valid_transaction,tx3,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar15,6)),fllibexecute_delayed_calls([],[]))),[],104,'queries.flr')),','(FLORA_WORKSPACE(\\io,d^tblflapply)(write,'  PASS','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar16,6)),!)),FLORA_WORKSPACE(\\io,d^tblflapply)(write,'  FAIL','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar17,6))),','(FLORA_WORKSPACE(\\io,d^tblflapply)(nl,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar18,6)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(diagnose_transaction,tx3,__Problem3,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar19,6)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(write,'  Reason: ','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar20,6)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(write,__Problem3,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar21,6)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(nl,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar22,6)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(nl,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar23,6)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(write,'Test 3: tx4 should be invalid (negative amount)','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar24,6)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(nl,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar25,6)),','(';'(','(flibnafdelay(flora_naf(FLORA_THIS_WORKSPACE(tabled_naf_call)(','(FLORA_THIS_WORKSPACE(d^tblflapply)(valid_transaction,tx4,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar26,6)),fllibexecute_delayed_calls([],[]))),[],116,'queries.flr')),','(FLORA_WORKSPACE(\\io,d^tblflapply)(write,'  PASS','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar27,6)),!)),FLORA_WORKSPACE(\\io,d^tblflapply)(write,'  FAIL','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar28,6))),','(FLORA_WORKSPACE(\\io,d^tblflapply)(nl,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar29,6)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(diagnose_transaction,tx4,__Problem4,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar30,6)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(write,'  Reason: ','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar31,6)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(write,__Problem4,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar32,6)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(nl,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar33,6)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(nl,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar34,6)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(write,'Test 4: Network health','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar35,6)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(nl,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar36,6)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(network_health,__Total,__Valid,__Invalid,__Score,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar37,6)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(write,'  Total: ','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar38,6)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(write,__Total,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar39,6)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(nl,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar40,6)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(write,'  Valid: ','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar41,6)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(write,__Valid,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar42,6)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(nl,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar43,6)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(write,'  Invalid: ','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar44,6)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(write,__Invalid,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar45,6)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(nl,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar46,6)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(write,'  Score: ','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar47,6)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(write,__Score,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar48,6)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(write,'%','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar49,6)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(nl,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar50,6)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(nl,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar51,6)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(write,'Tests completed','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar52,6)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(nl,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar53,6)),FLORA_WORKSPACE(\\io,d^tblflapply)(nl,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar54,6)))))))))))))))))))))))))))))))))))))))))))))))),null,'_$_$_flora''rule_enabled'(6,'queries.flr',FLORA_THIS_MODULE_NAME),fllibexecute_delayed_calls([__Invalid,__Problem3,__Problem4,__Score,__Total,__Valid],[]),true)).


%%%%%%%%%%%%%%%%%%%%%%%%% Signatures for latent queries %%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%




%%%%%%%%%%%%%%%%%%%%%%% Queries found in the source file %%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


 
#if !defined(FLORA_FLS2_FILENAME)
#if !defined(FLORA_LOADDYN_DATA)
#define FLORA_LOADDYN_DATA
#endif
#mode save
#mode nocomment "%"
#define FLORA_FLS2_FILENAME  'queries.fls2'
#mode restore
?-(:(flrutils,flora_loaddyn_data(FLORA_FLS2_FILENAME,FLORA_THIS_MODULE_NAME,'fls2'))).
#else
#if !defined(FLORA_READ_CANONICAL_AND_INSERT)
#define FLORA_READ_CANONICAL_AND_INSERT
#endif
?-(:(flrutils,flora_read_symbols_canonical_and_insert(FLORA_FLS2_FILENAME,FLORA_THIS_FLS_STORAGE,_SymbolErrNum))).
#endif

/************************************************************************
  file: headerinc/flrtrailer_inc.flh

  Author(s): Michael Kifer

  This file is automatically included by the Flora-2 compiler.
************************************************************************/

#include "flrtrailer.flh"

/***********************************************************************/

/************************************************************************
  file: headerinc/flrpreddef_inc.flh

  Author(s): Chang Zhao

  This file is automatically included by the Flora-2 compiler.
************************************************************************/

:-(compiler_options([xpp_on])).

#include "flrpreddef.flh"

/***********************************************************************/

