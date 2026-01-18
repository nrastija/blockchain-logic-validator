
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

#define FLORA_COMPILATION_ID 6

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
#define FLORA_THIS_FILENAME  'blockchain_kb.flr'
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
  file: syslibinc/flraggcount_inc.flh

  Author(s): Guizhen Yang

  This file is automatically included by the FLORA-2 compiler.
************************************************************************/

:-(compiler_options([xpp_on])).

#mode standard Prolog

#if !defined(FLORA_TERMS_FLH)
#define FLORA_TERMS_FLH
#include "flora_terms.flh"
#endif

?-(:(flrlibman,flora_load_library(FLLIBCOUNT))).

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

 
#if !defined(FLORA_FDB_FILENAME)
#if !defined(FLORA_LOADDYN_DATA)
#define FLORA_LOADDYN_DATA
#endif
#mode save
#mode nocomment "%"
#define FLORA_FDB_FILENAME  'blockchain_kb.fdb'
#mode restore
?-(:(flrutils,flora_loaddyn_data(FLORA_FDB_FILENAME,FLORA_THIS_MODULE_NAME,'fdb'))).
#else
#if !defined(FLORA_READ_CANONICAL_AND_INSERT)
#define FLORA_READ_CANONICAL_AND_INSERT
#endif
?-(:(flrutils,flora_read_canonical_and_insert(FLORA_FDB_FILENAME,FLORA_THIS_FDB_STORAGE))).
#endif

 
#if !defined(FLORA_FLM_FILENAME)
#if !defined(FLORA_LOADDYN_DATA)
#define FLORA_LOADDYN_DATA
#endif
#mode save
#mode nocomment "%"
#define FLORA_FLM_FILENAME  'blockchain_kb.flm'
#mode restore
?-(:(flrutils,flora_loaddyn_data(FLORA_FLM_FILENAME,FLORA_THIS_MODULE_NAME,'flm'))).
#else
#if !defined(FLORA_READ_CANONICAL_AND_INSERT)
#define FLORA_READ_CANONICAL_AND_INSERT
#endif
?-(:(flrutils,flora_read_descriptor_metafacts_canonical_and_insert(blockchain_kb,_ErrNum))).
#endif

 
#if !defined(FLORA_FLD_FILENAME)
#if !defined(FLORA_LOADDYN_DATA)
#define FLORA_LOADDYN_DATA
#endif
#mode save
#mode nocomment "%"
#define FLORA_FLD_FILENAME  'blockchain_kb.fld'
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
#define FLORA_FLS_FILENAME  'blockchain_kb.fls'
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

:-(FLORA_THIS_WORKSPACE(static^tblflapply)(member_list,__X,[__newdontcarevar1|__T],'_$ctxt'(_CallerModuleVar,4,__newcontextvar2)),','('_$_$_flora''rule_enabled'(4,'blockchain_kb.flr',FLORA_THIS_MODULE_NAME),FLORA_THIS_WORKSPACE(d^tblflapply)(member_list,__X,__T,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar3,4)))).
:-(FLORA_THIS_WORKSPACE(static^tblflapply)(length_list,[__newdontcarevar1|__T],__N,'_$ctxt'(_CallerModuleVar,6,__newcontextvar2)),','('_$_$_flora''rule_enabled'(6,'blockchain_kb.flr',FLORA_THIS_MODULE_NAME),','(','(FLORA_THIS_WORKSPACE(d^tblflapply)(length_list,__T,__N1,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar3,6)),fllibdelayedliteral('\\is','blockchain_kb.flr',160,[__N,+(__N1,1)])),fllibexecute_delayed_calls([__N,__N1,__T],[__N,__T,__newdontcarevar4])))).
:-(FLORA_THIS_WORKSPACE(static^tblflapply)(positive_amount,__Tx,'_$ctxt'(_CallerModuleVar,8,__newcontextvar1)),','('_$_$_flora''rule_enabled'(8,'blockchain_kb.flr',FLORA_THIS_MODULE_NAME),','(','(','(FLORA_THIS_WORKSPACE(d^mvd)(__Tx,amount,__A,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar3,8)),FLORA_THIS_WORKSPACE(d^isa)(__Tx,transaction,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,8))),fllibdelayedliteral(>,'blockchain_kb.flr',169,[__A,0])),fllibexecute_delayed_calls([__A,__Tx],[__Tx])))).
:-(FLORA_THIS_WORKSPACE(static^tblflapply)(different_addresses,__Tx,'_$ctxt'(_CallerModuleVar,10,__newcontextvar1)),','('_$_$_flora''rule_enabled'(10,'blockchain_kb.flr',FLORA_THIS_MODULE_NAME),','(','(','(','(FLORA_THIS_WORKSPACE(d^mvd)(__Tx,sender_address,__S,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar3,10)),FLORA_THIS_WORKSPACE(d^mvd)(__Tx,recipient_address,__R,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar4,10))),FLORA_THIS_WORKSPACE(d^isa)(__Tx,transaction,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,10))),fllibdelayedliteral('!==','blockchain_kb.flr',174,[__S,__R])),fllibexecute_delayed_calls([__R,__S,__Tx],[__Tx])))).
:-(FLORA_THIS_WORKSPACE(static^tblflapply)(sufficient_balance,__Tx,'_$ctxt'(_CallerModuleVar,12,__newcontextvar1)),','('_$_$_flora''rule_enabled'(12,'blockchain_kb.flr',FLORA_THIS_MODULE_NAME),','(','(','(','(FLORA_THIS_WORKSPACE(d^mvd)(__Tx,sender_address,__S,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar3,12)),FLORA_THIS_WORKSPACE(d^mvd)(__Tx,amount,__A,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar4,12))),FLORA_THIS_WORKSPACE(d^isa)(__Tx,transaction,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,12))),','(','(FLORA_THIS_WORKSPACE(d^mvd)(__S,balance,__B,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar6,12)),FLORA_THIS_WORKSPACE(d^isa)(__S,address,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar5,12))),fllibdelayedliteral(>=,'blockchain_kb.flr',180,[__B,__A]))),fllibexecute_delayed_calls([__A,__B,__S,__Tx],[__Tx])))).
:-(FLORA_THIS_WORKSPACE(static^tblflapply)(valid_signature,__Tx,'_$ctxt'(_CallerModuleVar,14,__newcontextvar1)),','('_$_$_flora''rule_enabled'(14,'blockchain_kb.flr',FLORA_THIS_MODULE_NAME),','(','(','(','(FLORA_THIS_WORKSPACE(d^mvd)(__Tx,sender_address,__S,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar3,14)),FLORA_THIS_WORKSPACE(d^mvd)(__Tx,digital_signature,__Sig,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar4,14))),FLORA_THIS_WORKSPACE(d^isa)(__Tx,transaction,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,14))),','(','(FLORA_THIS_WORKSPACE(d^mvd)(__S,id,__SenderId,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar6,14)),FLORA_THIS_WORKSPACE(d^isa)(__S,address,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar5,14))),','(atom_concat(sig_,__SenderId,__Prefix),sub_atom(__Sig,0,__Len,__After,__Prefix)))),fllibexecute_delayed_calls([__After,__Len,__Prefix,__S,__SenderId,__Sig,__Tx],[__Tx])))).
:-(FLORA_THIS_WORKSPACE(static^tblflapply)(not_double_spent,__Tx,'_$ctxt'(_CallerModuleVar,16,__newcontextvar1)),','('_$_$_flora''rule_enabled'(16,'blockchain_kb.flr',FLORA_THIS_MODULE_NAME),','(','(','(FLORA_THIS_WORKSPACE(d^mvd)(__Tx,tx_id,__TxID,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar3,16)),FLORA_THIS_WORKSPACE(d^isa)(__Tx,transaction,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,16))),flibnafdelay(flora_naf(FLORA_THIS_WORKSPACE(tabled_naf_call)(','(FLORA_THIS_WORKSPACE(d^tblflapply)(spent_transaction,__TxID,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar4,16)),fllibexecute_delayed_calls([__TxID],[]))),[__TxID],192,'blockchain_kb.flr'))),fllibexecute_delayed_calls([__Tx,__TxID],[__Tx])))).
:-(FLORA_THIS_WORKSPACE(static^tblflapply)(spent_transaction,__TxID,'_$ctxt'(_CallerModuleVar,18,__newcontextvar1)),','('_$_$_flora''rule_enabled'(18,'blockchain_kb.flr',FLORA_THIS_MODULE_NAME),','(','(','(FLORA_THIS_WORKSPACE(d^mvd)(___B,transactions,__TxList,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar3,18)),FLORA_THIS_WORKSPACE(d^isa)(___B,block,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,18))),','(FLORA_THIS_WORKSPACE(d^tblflapply)(member_list,__T,__TxList,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar4,18)),','(FLORA_THIS_WORKSPACE(d^mvd)(__T,tx_id,__TxID,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar6,18)),FLORA_THIS_WORKSPACE(d^isa)(__T,transaction,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar5,18))))),fllibexecute_delayed_calls([__T,__TxID,__TxList,___B],[__TxID])))).
:-(FLORA_THIS_WORKSPACE(static^tblflapply)(double_spend_risk,__Tx,'_$ctxt'(_CallerModuleVar,20,__newcontextvar1)),','('_$_$_flora''rule_enabled'(20,'blockchain_kb.flr',FLORA_THIS_MODULE_NAME),flibnafdelay(flora_naf(FLORA_THIS_WORKSPACE(tabled_naf_call)(','(FLORA_THIS_WORKSPACE(d^tblflapply)(not_double_spent,__Tx,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,20)),fllibexecute_delayed_calls([__Tx],[]))),[__Tx],200,'blockchain_kb.flr')))).
:-(FLORA_THIS_WORKSPACE(static^tblflapply)(is_valid_transaction,__Tx,'_$ctxt'(_CallerModuleVar,22,__newcontextvar1)),','('_$_$_flora''rule_enabled'(22,'blockchain_kb.flr',FLORA_THIS_MODULE_NAME),','(FLORA_THIS_WORKSPACE(d^isa)(__Tx,transaction,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,22)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(positive_amount,__Tx,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar3,22)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(different_addresses,__Tx,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar4,22)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(sufficient_balance,__Tx,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar5,22)),FLORA_THIS_WORKSPACE(d^tblflapply)(valid_signature,__Tx,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar6,22)))))))).
:-(FLORA_THIS_WORKSPACE(static^tblflapply)(valid_transaction,__Tx,'_$ctxt'(_CallerModuleVar,24,__newcontextvar1)),','('_$_$_flora''rule_enabled'(24,'blockchain_kb.flr',FLORA_THIS_MODULE_NAME),FLORA_THIS_WORKSPACE(d^tblflapply)(is_valid_transaction,__Tx,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,24)))).
:-(FLORA_THIS_WORKSPACE(static^tblflapply)(diagnose_transaction,__Tx,insufficient_funds,'_$ctxt'(_CallerModuleVar,26,__newcontextvar1)),','('_$_$_flora''rule_enabled'(26,'blockchain_kb.flr',FLORA_THIS_MODULE_NAME),','(flibnafdelay(flora_naf(FLORA_THIS_WORKSPACE(tabled_naf_call)(','(FLORA_THIS_WORKSPACE(d^tblflapply)(sufficient_balance,__Tx,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,26)),fllibexecute_delayed_calls([__Tx],[]))),[__Tx],218,'blockchain_kb.flr')),!))).
:-(FLORA_THIS_WORKSPACE(static^tblflapply)(diagnose_transaction,__Tx,negative_or_zero_amount,'_$ctxt'(_CallerModuleVar,28,__newcontextvar1)),','('_$_$_flora''rule_enabled'(28,'blockchain_kb.flr',FLORA_THIS_MODULE_NAME),','(flibnafdelay(flora_naf(FLORA_THIS_WORKSPACE(tabled_naf_call)(','(FLORA_THIS_WORKSPACE(d^tblflapply)(positive_amount,__Tx,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,28)),fllibexecute_delayed_calls([__Tx],[]))),[__Tx],222,'blockchain_kb.flr')),!))).
:-(FLORA_THIS_WORKSPACE(static^tblflapply)(diagnose_transaction,__Tx,same_sender_receiver,'_$ctxt'(_CallerModuleVar,30,__newcontextvar1)),','('_$_$_flora''rule_enabled'(30,'blockchain_kb.flr',FLORA_THIS_MODULE_NAME),','(flibnafdelay(flora_naf(FLORA_THIS_WORKSPACE(tabled_naf_call)(','(FLORA_THIS_WORKSPACE(d^tblflapply)(different_addresses,__Tx,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,30)),fllibexecute_delayed_calls([__Tx],[]))),[__Tx],226,'blockchain_kb.flr')),!))).
:-(FLORA_THIS_WORKSPACE(static^tblflapply)(diagnose_transaction,__Tx,invalid_signature,'_$ctxt'(_CallerModuleVar,32,__newcontextvar1)),','('_$_$_flora''rule_enabled'(32,'blockchain_kb.flr',FLORA_THIS_MODULE_NAME),','(flibnafdelay(flora_naf(FLORA_THIS_WORKSPACE(tabled_naf_call)(','(FLORA_THIS_WORKSPACE(d^tblflapply)(valid_signature,__Tx,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,32)),fllibexecute_delayed_calls([__Tx],[]))),[__Tx],230,'blockchain_kb.flr')),!))).
:-(FLORA_THIS_WORKSPACE(static^tblflapply)(diagnose_transaction,__Tx,valid,'_$ctxt'(_CallerModuleVar,34,__newcontextvar1)),','('_$_$_flora''rule_enabled'(34,'blockchain_kb.flr',FLORA_THIS_MODULE_NAME),','(FLORA_THIS_WORKSPACE(d^tblflapply)(valid_transaction,__Tx,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,34)),!))).
:-(FLORA_THIS_WORKSPACE(static^tblflapply)(valid_block_transactions,__Block,'_$ctxt'(_CallerModuleVar,36,__newcontextvar1)),','('_$_$_flora''rule_enabled'(36,'blockchain_kb.flr',FLORA_THIS_MODULE_NAME),','(','(','(FLORA_THIS_WORKSPACE(d^mvd)(__Block,transactions,__TxList,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar3,36)),FLORA_THIS_WORKSPACE(d^isa)(__Block,block,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,36))),FLORA_THIS_WORKSPACE(d^tblflapply)(all_valid_in_list,__TxList,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar4,36))),fllibexecute_delayed_calls([__Block,__TxList],[__Block])))).
:-(FLORA_THIS_WORKSPACE(static^tblflapply)(all_valid_in_list,[__Tx|__Rest],'_$ctxt'(_CallerModuleVar,38,__newcontextvar1)),','('_$_$_flora''rule_enabled'(38,'blockchain_kb.flr',FLORA_THIS_MODULE_NAME),','(FLORA_THIS_WORKSPACE(d^tblflapply)(valid_transaction,__Tx,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,38)),FLORA_THIS_WORKSPACE(d^tblflapply)(all_valid_in_list,__Rest,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar3,38))))).
:-(FLORA_THIS_WORKSPACE(static^tblflapply)(network_health,__Total,__Valid,__Invalid,__Score,'_$ctxt'(_CallerModuleVar,40,__newcontextvar1)),','('_$_$_flora''rule_enabled'(40,'blockchain_kb.flr',FLORA_THIS_MODULE_NAME),','(','(fllibcount(__newdontcarevar3,[],[],','(FLORA_THIS_WORKSPACE(d^isa)(__newdontcarevar3,transaction,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,40)),fllibexecute_delayed_calls([__newdontcarevar3],[])),__newvar4),=(__Total,__newvar4)),','(','(fllibcount(__newdontcarevar6,[],[],','(FLORA_THIS_WORKSPACE(d^tblflapply)(valid_transaction,__newdontcarevar6,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar5,40)),fllibexecute_delayed_calls([__newdontcarevar6],[])),__newvar7),=(__Valid,__newvar7)),','(fllibdelayedliteral('\\is','blockchain_kb.flr',260,[__Invalid,-(__Total,__Valid)]),FLORA_THIS_WORKSPACE(d^tblflapply)(calculate_score,__Total,__Valid,__Score,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar8,40))))))).
:-(FLORA_THIS_WORKSPACE(static^tblflapply)(calculate_score,__Total,__Valid,__Score,'_$ctxt'(_CallerModuleVar,42,__newcontextvar1)),','('_$_$_flora''rule_enabled'(42,'blockchain_kb.flr',FLORA_THIS_MODULE_NAME),','(fllibdelayedliteral(>,'blockchain_kb.flr',264,[__Total,0]),','(!,fllibdelayedliteral('\\is','blockchain_kb.flr',266,[__Score,/(*(__Valid,100.0),__Total)]))))).
:-(FLORA_THIS_WORKSPACE(static^tblflapply)(all_valid_transactions,__List,'_$ctxt'(_CallerModuleVar,44,__newcontextvar1)),','('_$_$_flora''rule_enabled'(44,'blockchain_kb.flr',FLORA_THIS_MODULE_NAME),','(','(FLORA_THIS_WORKSPACE(d^tblflapply)(all_transactions,__All,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,44)),FLORA_THIS_WORKSPACE(d^tblflapply)(valid_from_list,__All,__List,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar3,44))),fllibexecute_delayed_calls([__All,__List],[__List])))).
:-(FLORA_THIS_WORKSPACE(static^tblflapply)(valid_from_list,[__Tx|__Rest],[__Tx|__Out],'_$ctxt'(_CallerModuleVar,46,__newcontextvar1)),','('_$_$_flora''rule_enabled'(46,'blockchain_kb.flr',FLORA_THIS_MODULE_NAME),','(FLORA_THIS_WORKSPACE(d^tblflapply)(valid_transaction,__Tx,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,46)),FLORA_THIS_WORKSPACE(d^tblflapply)(valid_from_list,__Rest,__Out,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar3,46))))).
:-(FLORA_THIS_WORKSPACE(static^tblflapply)(valid_from_list,[__Tx|__Rest],__Out,'_$ctxt'(_CallerModuleVar,48,__newcontextvar1)),','('_$_$_flora''rule_enabled'(48,'blockchain_kb.flr',FLORA_THIS_MODULE_NAME),','(flibnafdelay(flora_naf(FLORA_THIS_WORKSPACE(tabled_naf_call)(','(FLORA_THIS_WORKSPACE(d^tblflapply)(valid_transaction,__Tx,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,48)),fllibexecute_delayed_calls([__Tx],[]))),[__Tx],279,'blockchain_kb.flr')),FLORA_THIS_WORKSPACE(d^tblflapply)(valid_from_list,__Rest,__Out,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar3,48))))).
:-(FLORA_THIS_WORKSPACE(static^tblflapply)(all_invalid_transactions,__List,'_$ctxt'(_CallerModuleVar,50,__newcontextvar1)),','('_$_$_flora''rule_enabled'(50,'blockchain_kb.flr',FLORA_THIS_MODULE_NAME),','(','(FLORA_THIS_WORKSPACE(d^tblflapply)(all_transactions,__All,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,50)),FLORA_THIS_WORKSPACE(d^tblflapply)(invalid_from_list,__All,__List,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar3,50))),fllibexecute_delayed_calls([__All,__List],[__List])))).
:-(FLORA_THIS_WORKSPACE(static^tblflapply)(invalid_from_list,[__Tx|__Rest],[__Tx|__Out],'_$ctxt'(_CallerModuleVar,52,__newcontextvar1)),','('_$_$_flora''rule_enabled'(52,'blockchain_kb.flr',FLORA_THIS_MODULE_NAME),','(flibnafdelay(flora_naf(FLORA_THIS_WORKSPACE(tabled_naf_call)(','(FLORA_THIS_WORKSPACE(d^tblflapply)(valid_transaction,__Tx,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,52)),fllibexecute_delayed_calls([__Tx],[]))),[__Tx],288,'blockchain_kb.flr')),FLORA_THIS_WORKSPACE(d^tblflapply)(invalid_from_list,__Rest,__Out,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar3,52))))).
:-(FLORA_THIS_WORKSPACE(static^tblflapply)(invalid_from_list,[__Tx|__Rest],__Out,'_$ctxt'(_CallerModuleVar,54,__newcontextvar1)),','('_$_$_flora''rule_enabled'(54,'blockchain_kb.flr',FLORA_THIS_MODULE_NAME),','(FLORA_THIS_WORKSPACE(d^tblflapply)(valid_transaction,__Tx,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,54)),FLORA_THIS_WORKSPACE(d^tblflapply)(invalid_from_list,__Rest,__Out,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar3,54))))).
:-(FLORA_THIS_WORKSPACE(static^tblflapply)(data_stats,'_$ctxt'(_CallerModuleVar,56,__newcontextvar1)),','('_$_$_flora''rule_enabled'(56,'blockchain_kb.flr',FLORA_THIS_MODULE_NAME),','(','(','(fllibcount(__newdontcarevar3,[],[],','(FLORA_THIS_WORKSPACE(d^isa)(__newdontcarevar3,address,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,56)),fllibexecute_delayed_calls([__newdontcarevar3],[])),__newvar4),=(__AddrCount,__newvar4)),','(','(fllibcount(__newdontcarevar6,[],[],','(FLORA_THIS_WORKSPACE(d^isa)(__newdontcarevar6,transaction,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar5,56)),fllibexecute_delayed_calls([__newdontcarevar6],[])),__newvar7),=(__TxCount,__newvar7)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(write,'Adrese u bazi: ','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar8,56)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(write,__AddrCount,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar9,56)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(nl,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar10,56)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(write,'Transakcije u bazi: ','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar11,56)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(write,__TxCount,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar12,56)),FLORA_WORKSPACE(\\io,d^tblflapply)(nl,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar13,56))))))))),fllibexecute_delayed_calls([__AddrCount,__TxCount],[])))).
:-(FLORA_THIS_WORKSPACE(static^tblflapply)(help,'_$ctxt'(_CallerModuleVar,58,__newcontextvar1)),','('_$_$_flora''rule_enabled'(58,'blockchain_kb.flr',FLORA_THIS_MODULE_NAME),','(FLORA_WORKSPACE(\\io,d^tblflapply)(nl,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,58)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(write,'Dostupne naredbe:','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar3,58)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(nl,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar4,58)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(nl,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar5,58)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(write,'Provjera valjanosti:','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar6,58)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(nl,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar7,58)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(write,'  valid_transaction(tx1).','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar8,58)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(write,'   - Provjerava je li transakcija tx1 valjana prema osnovnim pravilima.','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar9,58)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(nl,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar10,58)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(write,'  diagnose_transaction(tx3, ?Problem).','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar11,58)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(write,'   - Objašnjava zasto transakcija tx3 nije valjana (ili je valjana).','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar12,58)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(nl,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar13,58)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(nl,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar14,58)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(write,'Adrese:','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar15,58)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(nl,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar16,58)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(write,'  marko:address[balance -> ?B].','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar17,58)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(write,'   - Dohvaća trenutno stanje (balance) adrese marko.','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar18,58)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(nl,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar19,58)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(nl,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar20,58)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(write,'Transakcije:','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar21,58)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(nl,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar22,58)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(write,'  ?Tx:transaction[sender_address -> marko].','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar23,58)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(write,'   - Ispisuje sve transakcije koje je poslala adresa marko.','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar24,58)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(nl,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar25,58)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(nl,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar26,58)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(write,'Analiza:','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar27,58)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(nl,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar28,58)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(write,'  all_valid_transactions(?List).','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar29,58)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(write,'   - Vraća popis svih valjanih transakcija u sustavu.','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar30,58)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(nl,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar31,58)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(write,'  all_invalid_transactions(?List).','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar32,58)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(write,'   - Vraća popis svih nevaljanih transakcija u sustavu.','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar33,58)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(nl,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar34,58)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(write,'  double_spend_risk(tx1).','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar35,58)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(write,'   - Provjerava postoji li rizik dvostrukog trošenja za transakciju tx1.','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar36,58)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(nl,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar37,58)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(write,'  network_health(?T, ?V, ?I, ?S).','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar38,58)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(write,'   - Izračunava ukupno stanje mreže (ukupno, valjane, nevaljane transakcije i postotak ispravnosti).','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar39,58)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(nl,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar40,58)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(nl,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar41,58)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(write,'Blokovi:','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar42,58)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(nl,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar43,58)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(write,'  valid_block_transactions(block1).','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar44,58)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(write,'   - Provjerava jesu li sve transakcije unutar bloka block1 valjane.','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar45,58)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(nl,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar46,58)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(nl,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar47,58)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(write,'Statistika:','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar48,58)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(nl,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar49,58)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(write,'  data_stats.','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar50,58)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(write,'   - Ispisuje osnovnu statistiku o adresama i transakcijama u bazi znanja.','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar51,58)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(nl,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar52,58)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(nl,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar53,58)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(write,'Ukupno testiranje sustava:','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar54,58)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(nl,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar55,58)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(write,'  quick_test.','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar56,58)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(write,'   - Pokrece skup unaprijed definiranih testova za provjeru ispravnosti sustava.','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar57,58)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(nl,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar58,58)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(write,'     Testovi ukljucuju provjeru valjanih i nevaljanih transakcija te stanje mreže.','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar59,58)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(nl,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar60,58)),FLORA_WORKSPACE(\\io,d^tblflapply)(nl,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar61,58))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))).
:-(FLORA_THIS_WORKSPACE(static^tblflapply)(quick_test,'_$ctxt'(_CallerModuleVar,60,__newcontextvar1)),','('_$_$_flora''rule_enabled'(60,'blockchain_kb.flr',FLORA_THIS_MODULE_NAME),','(','(FLORA_WORKSPACE(\\io,d^tblflapply)(nl,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,60)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(write,'Pokretanje testova...','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar3,60)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(nl,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar4,60)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(nl,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar5,60)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(write,'Test 1: tx1 treba biti valjana','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar6,60)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(nl,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar7,60)),','(';'(','(FLORA_THIS_WORKSPACE(d^tblflapply)(valid_transaction,tx1,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar8,60)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(write,'  PROLAZ','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar9,60)),!)),FLORA_WORKSPACE(\\io,d^tblflapply)(write,'  PAD','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar10,60))),','(FLORA_WORKSPACE(\\io,d^tblflapply)(nl,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar11,60)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(nl,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar12,60)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(write,'Test 2: tx3 treba biti nevaljana (nedovoljna sredstva)','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar13,60)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(nl,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar14,60)),','(';'(','(flibnafdelay(flora_naf(FLORA_THIS_WORKSPACE(tabled_naf_call)(','(FLORA_THIS_WORKSPACE(d^tblflapply)(valid_transaction,tx3,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar15,60)),fllibexecute_delayed_calls([],[]))),[],372,'blockchain_kb.flr')),','(FLORA_WORKSPACE(\\io,d^tblflapply)(write,'  PROLAZ','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar16,60)),!)),FLORA_WORKSPACE(\\io,d^tblflapply)(write,'  PAD','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar17,60))),','(FLORA_WORKSPACE(\\io,d^tblflapply)(nl,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar18,60)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(diagnose_transaction,tx3,__P3,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar19,60)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(write,'  Razlog: ','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar20,60)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(write,__P3,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar21,60)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(nl,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar22,60)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(nl,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar23,60)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(write,'Test 3: tx4 treba biti nevaljana (negativan iznos)','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar24,60)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(nl,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar25,60)),','(';'(','(flibnafdelay(flora_naf(FLORA_THIS_WORKSPACE(tabled_naf_call)(','(FLORA_THIS_WORKSPACE(d^tblflapply)(valid_transaction,tx4,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar26,60)),fllibexecute_delayed_calls([],[]))),[],382,'blockchain_kb.flr')),','(FLORA_WORKSPACE(\\io,d^tblflapply)(write,'  PROLAZ','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar27,60)),!)),FLORA_WORKSPACE(\\io,d^tblflapply)(write,'  PAD','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar28,60))),','(FLORA_WORKSPACE(\\io,d^tblflapply)(nl,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar29,60)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(diagnose_transaction,tx4,__P4,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar30,60)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(write,'  Razlog: ','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar31,60)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(write,__P4,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar32,60)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(nl,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar33,60)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(nl,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar34,60)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(write,'Test 4: Stanje mreže','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar35,60)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(nl,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar36,60)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(network_health,__T,__V,__I,__S,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar37,60)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(write,'  Ukupno transakcija: ','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar38,60)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(write,__T,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar39,60)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(nl,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar40,60)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(write,'  Valjane: ','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar41,60)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(write,__V,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar42,60)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(nl,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar43,60)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(write,'  Nevaljane: ','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar44,60)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(write,__I,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar45,60)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(nl,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar46,60)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(write,'  Postotak ispravnosti: ','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar47,60)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(write,__S,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar48,60)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(write,'%','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar49,60)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(nl,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar50,60)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(nl,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar51,60)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(write,'Testiranje završeno.','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar52,60)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(nl,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar53,60)),FLORA_WORKSPACE(\\io,d^tblflapply)(nl,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar54,60)))))))))))))))))))))))))))))))))))))))))))))))),fllibexecute_delayed_calls([__I,__P3,__P4,__S,__T,__V],[])))).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Rule signatures %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

?-(fllibinsrulesig(4,'blockchain_kb.flr','_$_$_flora''descr_vars',FLORA_THIS_MODULE_NAME,25,FLORA_THIS_WORKSPACE(d^tblflapply)(member_list,__X,[__newdontcarevar1|__T],'_$ctxt'(_CallerModuleVar,4,__newcontextvar2)),FLORA_THIS_WORKSPACE(d^tblflapply)(member_list,__X,__T,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar3,4)),null,'_$_$_flora''rule_enabled'(4,'blockchain_kb.flr',FLORA_THIS_MODULE_NAME),null,true)).
?-(fllibinsrulesig(6,'blockchain_kb.flr','_$_$_flora''descr_vars',FLORA_THIS_MODULE_NAME,27,FLORA_THIS_WORKSPACE(d^tblflapply)(length_list,[__newdontcarevar1|__T],__N,'_$ctxt'(_CallerModuleVar,6,__newcontextvar2)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(length_list,__T,__N1,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar3,6)),fllibdelayedliteral('\\is','blockchain_kb.flr',160,[__N,+(__N1,1)])),null,'_$_$_flora''rule_enabled'(6,'blockchain_kb.flr',FLORA_THIS_MODULE_NAME),fllibexecute_delayed_calls([__N,__N1,__T],[__N,__T,__newdontcarevar4]),true)).
?-(fllibinsrulesig(8,'blockchain_kb.flr','_$_$_flora''descr_vars',FLORA_THIS_MODULE_NAME,28,FLORA_THIS_WORKSPACE(d^tblflapply)(positive_amount,__Tx,'_$ctxt'(_CallerModuleVar,8,__newcontextvar1)),','(','(FLORA_THIS_WORKSPACE(d^mvd)(__Tx,amount,__A,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar3,8)),FLORA_THIS_WORKSPACE(d^isa)(__Tx,transaction,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,8))),fllibdelayedliteral(>,'blockchain_kb.flr',169,[__A,0])),null,'_$_$_flora''rule_enabled'(8,'blockchain_kb.flr',FLORA_THIS_MODULE_NAME),fllibexecute_delayed_calls([__A,__Tx],[__Tx]),true)).
?-(fllibinsrulesig(10,'blockchain_kb.flr','_$_$_flora''descr_vars',FLORA_THIS_MODULE_NAME,29,FLORA_THIS_WORKSPACE(d^tblflapply)(different_addresses,__Tx,'_$ctxt'(_CallerModuleVar,10,__newcontextvar1)),','(','(','(FLORA_THIS_WORKSPACE(d^mvd)(__Tx,sender_address,__S,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar3,10)),FLORA_THIS_WORKSPACE(d^mvd)(__Tx,recipient_address,__R,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar4,10))),FLORA_THIS_WORKSPACE(d^isa)(__Tx,transaction,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,10))),fllibdelayedliteral('!==','blockchain_kb.flr',174,[__S,__R])),null,'_$_$_flora''rule_enabled'(10,'blockchain_kb.flr',FLORA_THIS_MODULE_NAME),fllibexecute_delayed_calls([__R,__S,__Tx],[__Tx]),true)).
?-(fllibinsrulesig(12,'blockchain_kb.flr','_$_$_flora''descr_vars',FLORA_THIS_MODULE_NAME,30,FLORA_THIS_WORKSPACE(d^tblflapply)(sufficient_balance,__Tx,'_$ctxt'(_CallerModuleVar,12,__newcontextvar1)),','(','(','(FLORA_THIS_WORKSPACE(d^mvd)(__Tx,sender_address,__S,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar3,12)),FLORA_THIS_WORKSPACE(d^mvd)(__Tx,amount,__A,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar4,12))),FLORA_THIS_WORKSPACE(d^isa)(__Tx,transaction,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,12))),','(','(FLORA_THIS_WORKSPACE(d^mvd)(__S,balance,__B,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar6,12)),FLORA_THIS_WORKSPACE(d^isa)(__S,address,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar5,12))),fllibdelayedliteral(>=,'blockchain_kb.flr',180,[__B,__A]))),null,'_$_$_flora''rule_enabled'(12,'blockchain_kb.flr',FLORA_THIS_MODULE_NAME),fllibexecute_delayed_calls([__A,__B,__S,__Tx],[__Tx]),true)).
?-(fllibinsrulesig(14,'blockchain_kb.flr','_$_$_flora''descr_vars',FLORA_THIS_MODULE_NAME,31,FLORA_THIS_WORKSPACE(d^tblflapply)(valid_signature,__Tx,'_$ctxt'(_CallerModuleVar,14,__newcontextvar1)),','(','(','(FLORA_THIS_WORKSPACE(d^mvd)(__Tx,sender_address,__S,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar3,14)),FLORA_THIS_WORKSPACE(d^mvd)(__Tx,digital_signature,__Sig,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar4,14))),FLORA_THIS_WORKSPACE(d^isa)(__Tx,transaction,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,14))),','(','(FLORA_THIS_WORKSPACE(d^mvd)(__S,id,__SenderId,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar6,14)),FLORA_THIS_WORKSPACE(d^isa)(__S,address,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar5,14))),','(atom_concat(sig_,__SenderId,__Prefix),sub_atom(__Sig,0,__Len,__After,__Prefix)))),null,'_$_$_flora''rule_enabled'(14,'blockchain_kb.flr',FLORA_THIS_MODULE_NAME),fllibexecute_delayed_calls([__After,__Len,__Prefix,__S,__SenderId,__Sig,__Tx],[__Tx]),true)).
?-(fllibinsrulesig(16,'blockchain_kb.flr','_$_$_flora''descr_vars',FLORA_THIS_MODULE_NAME,32,FLORA_THIS_WORKSPACE(d^tblflapply)(not_double_spent,__Tx,'_$ctxt'(_CallerModuleVar,16,__newcontextvar1)),','(','(FLORA_THIS_WORKSPACE(d^mvd)(__Tx,tx_id,__TxID,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar3,16)),FLORA_THIS_WORKSPACE(d^isa)(__Tx,transaction,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,16))),flibnafdelay(flora_naf(FLORA_THIS_WORKSPACE(tabled_naf_call)(','(FLORA_THIS_WORKSPACE(d^tblflapply)(spent_transaction,__TxID,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar4,16)),fllibexecute_delayed_calls([__TxID],[]))),[__TxID],192,'blockchain_kb.flr'))),null,'_$_$_flora''rule_enabled'(16,'blockchain_kb.flr',FLORA_THIS_MODULE_NAME),fllibexecute_delayed_calls([__Tx,__TxID],[__Tx]),true)).
?-(fllibinsrulesig(18,'blockchain_kb.flr','_$_$_flora''descr_vars',FLORA_THIS_MODULE_NAME,33,FLORA_THIS_WORKSPACE(d^tblflapply)(spent_transaction,__TxID,'_$ctxt'(_CallerModuleVar,18,__newcontextvar1)),','(','(FLORA_THIS_WORKSPACE(d^mvd)(___B,transactions,__TxList,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar3,18)),FLORA_THIS_WORKSPACE(d^isa)(___B,block,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,18))),','(FLORA_THIS_WORKSPACE(d^tblflapply)(member_list,__T,__TxList,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar4,18)),','(FLORA_THIS_WORKSPACE(d^mvd)(__T,tx_id,__TxID,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar6,18)),FLORA_THIS_WORKSPACE(d^isa)(__T,transaction,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar5,18))))),null,'_$_$_flora''rule_enabled'(18,'blockchain_kb.flr',FLORA_THIS_MODULE_NAME),fllibexecute_delayed_calls([__T,__TxID,__TxList,___B],[__TxID]),true)).
?-(fllibinsrulesig(20,'blockchain_kb.flr','_$_$_flora''descr_vars',FLORA_THIS_MODULE_NAME,34,FLORA_THIS_WORKSPACE(d^tblflapply)(double_spend_risk,__Tx,'_$ctxt'(_CallerModuleVar,20,__newcontextvar1)),flibnafdelay(flora_naf(FLORA_THIS_WORKSPACE(tabled_naf_call)(','(FLORA_THIS_WORKSPACE(d^tblflapply)(not_double_spent,__Tx,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,20)),fllibexecute_delayed_calls([__Tx],[]))),[__Tx],200,'blockchain_kb.flr')),null,'_$_$_flora''rule_enabled'(20,'blockchain_kb.flr',FLORA_THIS_MODULE_NAME),null,true)).
?-(fllibinsrulesig(22,'blockchain_kb.flr','_$_$_flora''descr_vars',FLORA_THIS_MODULE_NAME,35,FLORA_THIS_WORKSPACE(d^tblflapply)(is_valid_transaction,__Tx,'_$ctxt'(_CallerModuleVar,22,__newcontextvar1)),','(FLORA_THIS_WORKSPACE(d^isa)(__Tx,transaction,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,22)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(positive_amount,__Tx,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar3,22)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(different_addresses,__Tx,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar4,22)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(sufficient_balance,__Tx,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar5,22)),FLORA_THIS_WORKSPACE(d^tblflapply)(valid_signature,__Tx,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar6,22)))))),null,'_$_$_flora''rule_enabled'(22,'blockchain_kb.flr',FLORA_THIS_MODULE_NAME),null,true)).
?-(fllibinsrulesig(24,'blockchain_kb.flr','_$_$_flora''descr_vars',FLORA_THIS_MODULE_NAME,36,FLORA_THIS_WORKSPACE(d^tblflapply)(valid_transaction,__Tx,'_$ctxt'(_CallerModuleVar,24,__newcontextvar1)),FLORA_THIS_WORKSPACE(d^tblflapply)(is_valid_transaction,__Tx,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,24)),null,'_$_$_flora''rule_enabled'(24,'blockchain_kb.flr',FLORA_THIS_MODULE_NAME),null,true)).
?-(fllibinsrulesig(26,'blockchain_kb.flr','_$_$_flora''descr_vars',FLORA_THIS_MODULE_NAME,37,FLORA_THIS_WORKSPACE(d^tblflapply)(diagnose_transaction,__Tx,insufficient_funds,'_$ctxt'(_CallerModuleVar,26,__newcontextvar1)),','(flibnafdelay(flora_naf(FLORA_THIS_WORKSPACE(tabled_naf_call)(','(FLORA_THIS_WORKSPACE(d^tblflapply)(sufficient_balance,__Tx,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,26)),fllibexecute_delayed_calls([__Tx],[]))),[__Tx],218,'blockchain_kb.flr')),!),null,'_$_$_flora''rule_enabled'(26,'blockchain_kb.flr',FLORA_THIS_MODULE_NAME),null,true)).
?-(fllibinsrulesig(28,'blockchain_kb.flr','_$_$_flora''descr_vars',FLORA_THIS_MODULE_NAME,38,FLORA_THIS_WORKSPACE(d^tblflapply)(diagnose_transaction,__Tx,negative_or_zero_amount,'_$ctxt'(_CallerModuleVar,28,__newcontextvar1)),','(flibnafdelay(flora_naf(FLORA_THIS_WORKSPACE(tabled_naf_call)(','(FLORA_THIS_WORKSPACE(d^tblflapply)(positive_amount,__Tx,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,28)),fllibexecute_delayed_calls([__Tx],[]))),[__Tx],222,'blockchain_kb.flr')),!),null,'_$_$_flora''rule_enabled'(28,'blockchain_kb.flr',FLORA_THIS_MODULE_NAME),null,true)).
?-(fllibinsrulesig(30,'blockchain_kb.flr','_$_$_flora''descr_vars',FLORA_THIS_MODULE_NAME,39,FLORA_THIS_WORKSPACE(d^tblflapply)(diagnose_transaction,__Tx,same_sender_receiver,'_$ctxt'(_CallerModuleVar,30,__newcontextvar1)),','(flibnafdelay(flora_naf(FLORA_THIS_WORKSPACE(tabled_naf_call)(','(FLORA_THIS_WORKSPACE(d^tblflapply)(different_addresses,__Tx,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,30)),fllibexecute_delayed_calls([__Tx],[]))),[__Tx],226,'blockchain_kb.flr')),!),null,'_$_$_flora''rule_enabled'(30,'blockchain_kb.flr',FLORA_THIS_MODULE_NAME),null,true)).
?-(fllibinsrulesig(32,'blockchain_kb.flr','_$_$_flora''descr_vars',FLORA_THIS_MODULE_NAME,40,FLORA_THIS_WORKSPACE(d^tblflapply)(diagnose_transaction,__Tx,invalid_signature,'_$ctxt'(_CallerModuleVar,32,__newcontextvar1)),','(flibnafdelay(flora_naf(FLORA_THIS_WORKSPACE(tabled_naf_call)(','(FLORA_THIS_WORKSPACE(d^tblflapply)(valid_signature,__Tx,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,32)),fllibexecute_delayed_calls([__Tx],[]))),[__Tx],230,'blockchain_kb.flr')),!),null,'_$_$_flora''rule_enabled'(32,'blockchain_kb.flr',FLORA_THIS_MODULE_NAME),null,true)).
?-(fllibinsrulesig(34,'blockchain_kb.flr','_$_$_flora''descr_vars',FLORA_THIS_MODULE_NAME,41,FLORA_THIS_WORKSPACE(d^tblflapply)(diagnose_transaction,__Tx,valid,'_$ctxt'(_CallerModuleVar,34,__newcontextvar1)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(valid_transaction,__Tx,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,34)),!),null,'_$_$_flora''rule_enabled'(34,'blockchain_kb.flr',FLORA_THIS_MODULE_NAME),null,true)).
?-(fllibinsrulesig(36,'blockchain_kb.flr','_$_$_flora''descr_vars',FLORA_THIS_MODULE_NAME,43,FLORA_THIS_WORKSPACE(d^tblflapply)(valid_block_transactions,__Block,'_$ctxt'(_CallerModuleVar,36,__newcontextvar1)),','(','(FLORA_THIS_WORKSPACE(d^mvd)(__Block,transactions,__TxList,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar3,36)),FLORA_THIS_WORKSPACE(d^isa)(__Block,block,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,36))),FLORA_THIS_WORKSPACE(d^tblflapply)(all_valid_in_list,__TxList,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar4,36))),null,'_$_$_flora''rule_enabled'(36,'blockchain_kb.flr',FLORA_THIS_MODULE_NAME),fllibexecute_delayed_calls([__Block,__TxList],[__Block]),true)).
?-(fllibinsrulesig(38,'blockchain_kb.flr','_$_$_flora''descr_vars',FLORA_THIS_MODULE_NAME,45,FLORA_THIS_WORKSPACE(d^tblflapply)(all_valid_in_list,[__Tx|__Rest],'_$ctxt'(_CallerModuleVar,38,__newcontextvar1)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(valid_transaction,__Tx,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,38)),FLORA_THIS_WORKSPACE(d^tblflapply)(all_valid_in_list,__Rest,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar3,38))),null,'_$_$_flora''rule_enabled'(38,'blockchain_kb.flr',FLORA_THIS_MODULE_NAME),null,true)).
?-(fllibinsrulesig(40,'blockchain_kb.flr','_$_$_flora''descr_vars',FLORA_THIS_MODULE_NAME,46,FLORA_THIS_WORKSPACE(d^tblflapply)(network_health,__Total,__Valid,__Invalid,__Score,'_$ctxt'(_CallerModuleVar,40,__newcontextvar1)),','(','(fllibcount(__newdontcarevar3,[],[],','(FLORA_THIS_WORKSPACE(d^isa)(__newdontcarevar3,transaction,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,40)),fllibexecute_delayed_calls([__newdontcarevar3],[])),__newvar4),=(__Total,__newvar4)),','(','(fllibcount(__newdontcarevar6,[],[],','(FLORA_THIS_WORKSPACE(d^tblflapply)(valid_transaction,__newdontcarevar6,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar5,40)),fllibexecute_delayed_calls([__newdontcarevar6],[])),__newvar7),=(__Valid,__newvar7)),','(fllibdelayedliteral('\\is','blockchain_kb.flr',260,[__Invalid,-(__Total,__Valid)]),FLORA_THIS_WORKSPACE(d^tblflapply)(calculate_score,__Total,__Valid,__Score,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar8,40))))),null,'_$_$_flora''rule_enabled'(40,'blockchain_kb.flr',FLORA_THIS_MODULE_NAME),null,true)).
?-(fllibinsrulesig(42,'blockchain_kb.flr','_$_$_flora''descr_vars',FLORA_THIS_MODULE_NAME,47,FLORA_THIS_WORKSPACE(d^tblflapply)(calculate_score,__Total,__Valid,__Score,'_$ctxt'(_CallerModuleVar,42,__newcontextvar1)),','(fllibdelayedliteral(>,'blockchain_kb.flr',264,[__Total,0]),','(!,fllibdelayedliteral('\\is','blockchain_kb.flr',266,[__Score,/(*(__Valid,100.0),__Total)]))),null,'_$_$_flora''rule_enabled'(42,'blockchain_kb.flr',FLORA_THIS_MODULE_NAME),null,true)).
?-(fllibinsrulesig(44,'blockchain_kb.flr','_$_$_flora''descr_vars',FLORA_THIS_MODULE_NAME,49,FLORA_THIS_WORKSPACE(d^tblflapply)(all_valid_transactions,__List,'_$ctxt'(_CallerModuleVar,44,__newcontextvar1)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(all_transactions,__All,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,44)),FLORA_THIS_WORKSPACE(d^tblflapply)(valid_from_list,__All,__List,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar3,44))),null,'_$_$_flora''rule_enabled'(44,'blockchain_kb.flr',FLORA_THIS_MODULE_NAME),fllibexecute_delayed_calls([__All,__List],[__List]),true)).
?-(fllibinsrulesig(46,'blockchain_kb.flr','_$_$_flora''descr_vars',FLORA_THIS_MODULE_NAME,51,FLORA_THIS_WORKSPACE(d^tblflapply)(valid_from_list,[__Tx|__Rest],[__Tx|__Out],'_$ctxt'(_CallerModuleVar,46,__newcontextvar1)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(valid_transaction,__Tx,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,46)),FLORA_THIS_WORKSPACE(d^tblflapply)(valid_from_list,__Rest,__Out,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar3,46))),null,'_$_$_flora''rule_enabled'(46,'blockchain_kb.flr',FLORA_THIS_MODULE_NAME),null,true)).
?-(fllibinsrulesig(48,'blockchain_kb.flr','_$_$_flora''descr_vars',FLORA_THIS_MODULE_NAME,52,FLORA_THIS_WORKSPACE(d^tblflapply)(valid_from_list,[__Tx|__Rest],__Out,'_$ctxt'(_CallerModuleVar,48,__newcontextvar1)),','(flibnafdelay(flora_naf(FLORA_THIS_WORKSPACE(tabled_naf_call)(','(FLORA_THIS_WORKSPACE(d^tblflapply)(valid_transaction,__Tx,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,48)),fllibexecute_delayed_calls([__Tx],[]))),[__Tx],279,'blockchain_kb.flr')),FLORA_THIS_WORKSPACE(d^tblflapply)(valid_from_list,__Rest,__Out,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar3,48))),null,'_$_$_flora''rule_enabled'(48,'blockchain_kb.flr',FLORA_THIS_MODULE_NAME),null,true)).
?-(fllibinsrulesig(50,'blockchain_kb.flr','_$_$_flora''descr_vars',FLORA_THIS_MODULE_NAME,53,FLORA_THIS_WORKSPACE(d^tblflapply)(all_invalid_transactions,__List,'_$ctxt'(_CallerModuleVar,50,__newcontextvar1)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(all_transactions,__All,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,50)),FLORA_THIS_WORKSPACE(d^tblflapply)(invalid_from_list,__All,__List,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar3,50))),null,'_$_$_flora''rule_enabled'(50,'blockchain_kb.flr',FLORA_THIS_MODULE_NAME),fllibexecute_delayed_calls([__All,__List],[__List]),true)).
?-(fllibinsrulesig(52,'blockchain_kb.flr','_$_$_flora''descr_vars',FLORA_THIS_MODULE_NAME,55,FLORA_THIS_WORKSPACE(d^tblflapply)(invalid_from_list,[__Tx|__Rest],[__Tx|__Out],'_$ctxt'(_CallerModuleVar,52,__newcontextvar1)),','(flibnafdelay(flora_naf(FLORA_THIS_WORKSPACE(tabled_naf_call)(','(FLORA_THIS_WORKSPACE(d^tblflapply)(valid_transaction,__Tx,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,52)),fllibexecute_delayed_calls([__Tx],[]))),[__Tx],288,'blockchain_kb.flr')),FLORA_THIS_WORKSPACE(d^tblflapply)(invalid_from_list,__Rest,__Out,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar3,52))),null,'_$_$_flora''rule_enabled'(52,'blockchain_kb.flr',FLORA_THIS_MODULE_NAME),null,true)).
?-(fllibinsrulesig(54,'blockchain_kb.flr','_$_$_flora''descr_vars',FLORA_THIS_MODULE_NAME,56,FLORA_THIS_WORKSPACE(d^tblflapply)(invalid_from_list,[__Tx|__Rest],__Out,'_$ctxt'(_CallerModuleVar,54,__newcontextvar1)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(valid_transaction,__Tx,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,54)),FLORA_THIS_WORKSPACE(d^tblflapply)(invalid_from_list,__Rest,__Out,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar3,54))),null,'_$_$_flora''rule_enabled'(54,'blockchain_kb.flr',FLORA_THIS_MODULE_NAME),null,true)).
?-(fllibinsrulesig(56,'blockchain_kb.flr','_$_$_flora''descr_vars',FLORA_THIS_MODULE_NAME,57,FLORA_THIS_WORKSPACE(d^tblflapply)(data_stats,'_$ctxt'(_CallerModuleVar,56,__newcontextvar1)),','(','(fllibcount(__newdontcarevar3,[],[],','(FLORA_THIS_WORKSPACE(d^isa)(__newdontcarevar3,address,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,56)),fllibexecute_delayed_calls([__newdontcarevar3],[])),__newvar4),=(__AddrCount,__newvar4)),','(','(fllibcount(__newdontcarevar6,[],[],','(FLORA_THIS_WORKSPACE(d^isa)(__newdontcarevar6,transaction,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar5,56)),fllibexecute_delayed_calls([__newdontcarevar6],[])),__newvar7),=(__TxCount,__newvar7)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(write,'Adrese u bazi: ','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar8,56)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(write,__AddrCount,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar9,56)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(nl,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar10,56)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(write,'Transakcije u bazi: ','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar11,56)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(write,__TxCount,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar12,56)),FLORA_WORKSPACE(\\io,d^tblflapply)(nl,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar13,56))))))))),null,'_$_$_flora''rule_enabled'(56,'blockchain_kb.flr',FLORA_THIS_MODULE_NAME),fllibexecute_delayed_calls([__AddrCount,__TxCount],[]),true)).
?-(fllibinsrulesig(58,'blockchain_kb.flr','_$_$_flora''descr_vars',FLORA_THIS_MODULE_NAME,58,FLORA_THIS_WORKSPACE(d^tblflapply)(help,'_$ctxt'(_CallerModuleVar,58,__newcontextvar1)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(nl,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,58)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(write,'Dostupne naredbe:','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar3,58)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(nl,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar4,58)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(nl,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar5,58)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(write,'Provjera valjanosti:','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar6,58)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(nl,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar7,58)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(write,'  valid_transaction(tx1).','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar8,58)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(write,'   - Provjerava je li transakcija tx1 valjana prema osnovnim pravilima.','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar9,58)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(nl,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar10,58)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(write,'  diagnose_transaction(tx3, ?Problem).','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar11,58)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(write,'   - Objašnjava zasto transakcija tx3 nije valjana (ili je valjana).','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar12,58)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(nl,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar13,58)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(nl,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar14,58)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(write,'Adrese:','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar15,58)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(nl,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar16,58)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(write,'  marko:address[balance -> ?B].','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar17,58)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(write,'   - Dohvaća trenutno stanje (balance) adrese marko.','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar18,58)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(nl,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar19,58)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(nl,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar20,58)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(write,'Transakcije:','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar21,58)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(nl,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar22,58)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(write,'  ?Tx:transaction[sender_address -> marko].','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar23,58)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(write,'   - Ispisuje sve transakcije koje je poslala adresa marko.','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar24,58)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(nl,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar25,58)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(nl,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar26,58)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(write,'Analiza:','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar27,58)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(nl,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar28,58)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(write,'  all_valid_transactions(?List).','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar29,58)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(write,'   - Vraća popis svih valjanih transakcija u sustavu.','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar30,58)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(nl,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar31,58)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(write,'  all_invalid_transactions(?List).','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar32,58)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(write,'   - Vraća popis svih nevaljanih transakcija u sustavu.','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar33,58)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(nl,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar34,58)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(write,'  double_spend_risk(tx1).','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar35,58)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(write,'   - Provjerava postoji li rizik dvostrukog trošenja za transakciju tx1.','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar36,58)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(nl,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar37,58)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(write,'  network_health(?T, ?V, ?I, ?S).','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar38,58)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(write,'   - Izračunava ukupno stanje mreže (ukupno, valjane, nevaljane transakcije i postotak ispravnosti).','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar39,58)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(nl,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar40,58)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(nl,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar41,58)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(write,'Blokovi:','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar42,58)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(nl,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar43,58)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(write,'  valid_block_transactions(block1).','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar44,58)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(write,'   - Provjerava jesu li sve transakcije unutar bloka block1 valjane.','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar45,58)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(nl,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar46,58)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(nl,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar47,58)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(write,'Statistika:','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar48,58)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(nl,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar49,58)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(write,'  data_stats.','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar50,58)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(write,'   - Ispisuje osnovnu statistiku o adresama i transakcijama u bazi znanja.','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar51,58)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(nl,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar52,58)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(nl,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar53,58)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(write,'Ukupno testiranje sustava:','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar54,58)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(nl,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar55,58)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(write,'  quick_test.','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar56,58)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(write,'   - Pokrece skup unaprijed definiranih testova za provjeru ispravnosti sustava.','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar57,58)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(nl,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar58,58)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(write,'     Testovi ukljucuju provjeru valjanih i nevaljanih transakcija te stanje mreže.','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar59,58)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(nl,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar60,58)),FLORA_WORKSPACE(\\io,d^tblflapply)(nl,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar61,58))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))),null,'_$_$_flora''rule_enabled'(58,'blockchain_kb.flr',FLORA_THIS_MODULE_NAME),null,true)).
?-(fllibinsrulesig(60,'blockchain_kb.flr','_$_$_flora''descr_vars',FLORA_THIS_MODULE_NAME,59,FLORA_THIS_WORKSPACE(d^tblflapply)(quick_test,'_$ctxt'(_CallerModuleVar,60,__newcontextvar1)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(nl,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,60)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(write,'Pokretanje testova...','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar3,60)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(nl,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar4,60)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(nl,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar5,60)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(write,'Test 1: tx1 treba biti valjana','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar6,60)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(nl,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar7,60)),','(';'(','(FLORA_THIS_WORKSPACE(d^tblflapply)(valid_transaction,tx1,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar8,60)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(write,'  PROLAZ','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar9,60)),!)),FLORA_WORKSPACE(\\io,d^tblflapply)(write,'  PAD','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar10,60))),','(FLORA_WORKSPACE(\\io,d^tblflapply)(nl,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar11,60)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(nl,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar12,60)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(write,'Test 2: tx3 treba biti nevaljana (nedovoljna sredstva)','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar13,60)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(nl,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar14,60)),','(';'(','(flibnafdelay(flora_naf(FLORA_THIS_WORKSPACE(tabled_naf_call)(','(FLORA_THIS_WORKSPACE(d^tblflapply)(valid_transaction,tx3,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar15,60)),fllibexecute_delayed_calls([],[]))),[],372,'blockchain_kb.flr')),','(FLORA_WORKSPACE(\\io,d^tblflapply)(write,'  PROLAZ','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar16,60)),!)),FLORA_WORKSPACE(\\io,d^tblflapply)(write,'  PAD','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar17,60))),','(FLORA_WORKSPACE(\\io,d^tblflapply)(nl,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar18,60)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(diagnose_transaction,tx3,__P3,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar19,60)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(write,'  Razlog: ','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar20,60)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(write,__P3,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar21,60)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(nl,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar22,60)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(nl,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar23,60)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(write,'Test 3: tx4 treba biti nevaljana (negativan iznos)','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar24,60)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(nl,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar25,60)),','(';'(','(flibnafdelay(flora_naf(FLORA_THIS_WORKSPACE(tabled_naf_call)(','(FLORA_THIS_WORKSPACE(d^tblflapply)(valid_transaction,tx4,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar26,60)),fllibexecute_delayed_calls([],[]))),[],382,'blockchain_kb.flr')),','(FLORA_WORKSPACE(\\io,d^tblflapply)(write,'  PROLAZ','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar27,60)),!)),FLORA_WORKSPACE(\\io,d^tblflapply)(write,'  PAD','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar28,60))),','(FLORA_WORKSPACE(\\io,d^tblflapply)(nl,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar29,60)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(diagnose_transaction,tx4,__P4,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar30,60)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(write,'  Razlog: ','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar31,60)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(write,__P4,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar32,60)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(nl,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar33,60)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(nl,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar34,60)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(write,'Test 4: Stanje mreže','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar35,60)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(nl,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar36,60)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(network_health,__T,__V,__I,__S,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar37,60)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(write,'  Ukupno transakcija: ','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar38,60)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(write,__T,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar39,60)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(nl,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar40,60)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(write,'  Valjane: ','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar41,60)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(write,__V,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar42,60)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(nl,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar43,60)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(write,'  Nevaljane: ','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar44,60)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(write,__I,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar45,60)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(nl,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar46,60)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(write,'  Postotak ispravnosti: ','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar47,60)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(write,__S,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar48,60)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(write,'%','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar49,60)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(nl,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar50,60)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(nl,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar51,60)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(write,'Testiranje završeno.','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar52,60)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(nl,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar53,60)),FLORA_WORKSPACE(\\io,d^tblflapply)(nl,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar54,60)))))))))))))))))))))))))))))))))))))))))))))))),null,'_$_$_flora''rule_enabled'(60,'blockchain_kb.flr',FLORA_THIS_MODULE_NAME),fllibexecute_delayed_calls([__I,__P3,__P4,__S,__T,__V],[]),true)).


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
#define FLORA_FLS2_FILENAME  'blockchain_kb.fls2'
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

