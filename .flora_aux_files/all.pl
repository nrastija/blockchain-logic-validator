
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

#define FLORA_COMPILATION_ID 5

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
#define FLORA_THIS_FILENAME  'all.flr'
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
  file: syslibinc/flranswer_inc.flh

  Author(s): Guizhen Yang

  This file is automatically included by the FLORA-2 compiler.
************************************************************************/

:-(compiler_options([xpp_on])).

#mode standard Prolog

#if !defined(FLORA_TERMS_FLH)
#define FLORA_TERMS_FLH
#include "flora_terms.flh"
#endif

?-(:(flrlibman,flora_load_library(FLLIBANSWER))).

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
#define FLORA_FDB_FILENAME  'all.fdb'
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
#define FLORA_FLM_FILENAME  'all.flm'
#mode restore
?-(:(flrutils,flora_loaddyn_data(FLORA_FLM_FILENAME,FLORA_THIS_MODULE_NAME,'flm'))).
#else
#if !defined(FLORA_READ_CANONICAL_AND_INSERT)
#define FLORA_READ_CANONICAL_AND_INSERT
#endif
?-(:(flrutils,flora_read_descriptor_metafacts_canonical_and_insert(all,_ErrNum))).
#endif

 
#if !defined(FLORA_FLD_FILENAME)
#if !defined(FLORA_LOADDYN_DATA)
#define FLORA_LOADDYN_DATA
#endif
#mode save
#mode nocomment "%"
#define FLORA_FLD_FILENAME  'all.fld'
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
#define FLORA_FLS_FILENAME  'all.fls'
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

:-(FLORA_THIS_WORKSPACE(static^tblflapply)(positive_amount,__Tx,'_$ctxt'(_CallerModuleVar,4,__newcontextvar1)),','('_$_$_flora''rule_enabled'(4,'all.flr',FLORA_THIS_MODULE_NAME),','(','(','(FLORA_THIS_WORKSPACE(d^mvd)(__Tx,amount,__Amount,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar3,4)),FLORA_THIS_WORKSPACE(d^isa)(__Tx,transaction,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,4))),fllibdelayedliteral(>,'all.flr',153,[__Amount,0])),fllibexecute_delayed_calls([__Amount,__Tx],[__Tx])))).
:-(FLORA_THIS_WORKSPACE(static^tblflapply)(different_addresses,__Tx,'_$ctxt'(_CallerModuleVar,6,__newcontextvar1)),','('_$_$_flora''rule_enabled'(6,'all.flr',FLORA_THIS_MODULE_NAME),','(','(','(','(FLORA_THIS_WORKSPACE(d^mvd)(__Tx,sender_address,__S,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar3,6)),FLORA_THIS_WORKSPACE(d^mvd)(__Tx,recipient_address,__R,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar4,6))),FLORA_THIS_WORKSPACE(d^isa)(__Tx,transaction,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,6))),fllibdelayedliteral('!==','all.flr',158,[__S,__R])),fllibexecute_delayed_calls([__R,__S,__Tx],[__Tx])))).
:-(FLORA_THIS_WORKSPACE(static^tblflapply)(sufficient_balance,__Tx,'_$ctxt'(_CallerModuleVar,8,__newcontextvar1)),','('_$_$_flora''rule_enabled'(8,'all.flr',FLORA_THIS_MODULE_NAME),','(','(','(','(FLORA_THIS_WORKSPACE(d^mvd)(__Tx,sender_address,__S,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar3,8)),FLORA_THIS_WORKSPACE(d^mvd)(__Tx,amount,__A,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar4,8))),FLORA_THIS_WORKSPACE(d^isa)(__Tx,transaction,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,8))),','(','(FLORA_THIS_WORKSPACE(d^mvd)(__S,balance,__B,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar6,8)),FLORA_THIS_WORKSPACE(d^isa)(__S,address,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar5,8))),fllibdelayedliteral(>=,'all.flr',164,[__B,__A]))),fllibexecute_delayed_calls([__A,__B,__S,__Tx],[__Tx])))).
:-(FLORA_THIS_WORKSPACE(static^tblflapply)(valid_signature,__Tx,'_$ctxt'(_CallerModuleVar,10,__newcontextvar1)),','('_$_$_flora''rule_enabled'(10,'all.flr',FLORA_THIS_MODULE_NAME),','(','(','(','(FLORA_THIS_WORKSPACE(d^mvd)(__Tx,sender_address,__SenderAddr,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar3,10)),FLORA_THIS_WORKSPACE(d^mvd)(__Tx,digital_signature,__Sig,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar4,10))),FLORA_THIS_WORKSPACE(d^isa)(__Tx,transaction,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,10))),','(','(FLORA_THIS_WORKSPACE(d^mvd)(__SenderAddr,id,__SenderId,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar6,10)),FLORA_THIS_WORKSPACE(d^isa)(__SenderAddr,address,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar5,10))),','(atom_concat(sig_,__SenderId,__Prefix),sub_atom(__Sig,0,__Len,__After,__Prefix)))),fllibexecute_delayed_calls([__After,__Len,__Prefix,__SenderAddr,__SenderId,__Sig,__Tx],[__Tx])))).
:-(FLORA_THIS_WORKSPACE(static^tblflapply)(not_double_spent,__Tx,'_$ctxt'(_CallerModuleVar,12,__newcontextvar1)),','('_$_$_flora''rule_enabled'(12,'all.flr',FLORA_THIS_MODULE_NAME),','(','(','(FLORA_THIS_WORKSPACE(d^mvd)(__Tx,tx_id,__TxID,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar3,12)),FLORA_THIS_WORKSPACE(d^isa)(__Tx,transaction,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,12))),flibnafdelay(flora_naf(FLORA_THIS_WORKSPACE(tabled_naf_call)(','(FLORA_THIS_WORKSPACE(d^tblflapply)(spent_transaction,__TxID,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar4,12)),fllibexecute_delayed_calls([__TxID],[]))),[__TxID],176,'all.flr'))),fllibexecute_delayed_calls([__Tx,__TxID],[__Tx])))).
:-(FLORA_THIS_WORKSPACE(static^tblflapply)(spent_transaction,__TxID,'_$ctxt'(_CallerModuleVar,14,__newcontextvar1)),','('_$_$_flora''rule_enabled'(14,'all.flr',FLORA_THIS_MODULE_NAME),','(','(','(FLORA_THIS_WORKSPACE(d^mvd)(___B,transactions,__TxList,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar3,14)),FLORA_THIS_WORKSPACE(d^isa)(___B,block,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,14))),','(:(lists,flapply(member,__T,__TxList)),','(FLORA_THIS_WORKSPACE(d^mvd)(__T,tx_id,__TxID,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar5,14)),FLORA_THIS_WORKSPACE(d^isa)(__T,transaction,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar4,14))))),fllibexecute_delayed_calls([__T,__TxID,__TxList,___B],[__TxID])))).
:-(FLORA_THIS_WORKSPACE(static^tblflapply)(is_valid_transaction,__Tx,'_$ctxt'(_CallerModuleVar,16,__newcontextvar1)),','('_$_$_flora''rule_enabled'(16,'all.flr',FLORA_THIS_MODULE_NAME),','(FLORA_THIS_WORKSPACE(d^isa)(__Tx,transaction,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,16)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(positive_amount,__Tx,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar3,16)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(different_addresses,__Tx,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar4,16)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(sufficient_balance,__Tx,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar5,16)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(valid_signature,__Tx,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar6,16)),FLORA_THIS_WORKSPACE(d^tblflapply)(not_double_spent,__Tx,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar7,16))))))))).
:-(FLORA_THIS_WORKSPACE(static^tblflapply)(valid_transaction,__Tx,'_$ctxt'(_CallerModuleVar,18,__newcontextvar1)),','('_$_$_flora''rule_enabled'(18,'all.flr',FLORA_THIS_MODULE_NAME),FLORA_THIS_WORKSPACE(d^tblflapply)(is_valid_transaction,__Tx,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,18)))).
:-(FLORA_THIS_WORKSPACE(static^tblflapply)(diagnose_transaction,__Tx,insufficient_funds,'_$ctxt'(_CallerModuleVar,20,__newcontextvar1)),','('_$_$_flora''rule_enabled'(20,'all.flr',FLORA_THIS_MODULE_NAME),','(flibnafdelay(flora_naf(FLORA_THIS_WORKSPACE(tabled_naf_call)(','(FLORA_THIS_WORKSPACE(d^tblflapply)(sufficient_balance,__Tx,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,20)),fllibexecute_delayed_calls([__Tx],[]))),[__Tx],197,'all.flr')),!))).
:-(FLORA_THIS_WORKSPACE(static^tblflapply)(diagnose_transaction,__Tx,negative_or_zero_amount,'_$ctxt'(_CallerModuleVar,22,__newcontextvar1)),','('_$_$_flora''rule_enabled'(22,'all.flr',FLORA_THIS_MODULE_NAME),','(flibnafdelay(flora_naf(FLORA_THIS_WORKSPACE(tabled_naf_call)(','(FLORA_THIS_WORKSPACE(d^tblflapply)(positive_amount,__Tx,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,22)),fllibexecute_delayed_calls([__Tx],[]))),[__Tx],200,'all.flr')),!))).
:-(FLORA_THIS_WORKSPACE(static^tblflapply)(diagnose_transaction,__Tx,same_sender_receiver,'_$ctxt'(_CallerModuleVar,24,__newcontextvar1)),','('_$_$_flora''rule_enabled'(24,'all.flr',FLORA_THIS_MODULE_NAME),','(flibnafdelay(flora_naf(FLORA_THIS_WORKSPACE(tabled_naf_call)(','(FLORA_THIS_WORKSPACE(d^tblflapply)(different_addresses,__Tx,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,24)),fllibexecute_delayed_calls([__Tx],[]))),[__Tx],203,'all.flr')),!))).
:-(FLORA_THIS_WORKSPACE(static^tblflapply)(diagnose_transaction,__Tx,invalid_signature,'_$ctxt'(_CallerModuleVar,26,__newcontextvar1)),','('_$_$_flora''rule_enabled'(26,'all.flr',FLORA_THIS_MODULE_NAME),','(flibnafdelay(flora_naf(FLORA_THIS_WORKSPACE(tabled_naf_call)(','(FLORA_THIS_WORKSPACE(d^tblflapply)(valid_signature,__Tx,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,26)),fllibexecute_delayed_calls([__Tx],[]))),[__Tx],206,'all.flr')),!))).
:-(FLORA_THIS_WORKSPACE(static^tblflapply)(diagnose_transaction,__Tx,double_spending,'_$ctxt'(_CallerModuleVar,28,__newcontextvar1)),','('_$_$_flora''rule_enabled'(28,'all.flr',FLORA_THIS_MODULE_NAME),','(flibnafdelay(flora_naf(FLORA_THIS_WORKSPACE(tabled_naf_call)(','(FLORA_THIS_WORKSPACE(d^tblflapply)(not_double_spent,__Tx,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,28)),fllibexecute_delayed_calls([__Tx],[]))),[__Tx],209,'all.flr')),!))).
:-(FLORA_THIS_WORKSPACE(static^tblflapply)(diagnose_transaction,__Tx,valid,'_$ctxt'(_CallerModuleVar,30,__newcontextvar1)),','('_$_$_flora''rule_enabled'(30,'all.flr',FLORA_THIS_MODULE_NAME),','(FLORA_THIS_WORKSPACE(d^tblflapply)(valid_transaction,__Tx,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,30)),!))).
:-(FLORA_THIS_WORKSPACE(static^tblflapply)(valid_block_transactions,__Block,'_$ctxt'(_CallerModuleVar,32,__newcontextvar1)),','('_$_$_flora''rule_enabled'(32,'all.flr',FLORA_THIS_MODULE_NAME),','(','(','(FLORA_THIS_WORKSPACE(d^mvd)(__Block,transactions,__TxList,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar3,32)),FLORA_THIS_WORKSPACE(d^isa)(__Block,block,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,32))),forall(member(__Tx,__TxList),flapply(valid_transaction,__Tx))),fllibexecute_delayed_calls([__Block,__Tx,__TxList],[__Block])))).
:-(FLORA_THIS_WORKSPACE(static^tblflapply)(all_valid_transactions,__List,'_$ctxt'(_CallerModuleVar,34,__newcontextvar1)),','('_$_$_flora''rule_enabled'(34,'all.flr',FLORA_THIS_MODULE_NAME),','(','(FLORA_THIS_WORKSPACE(d^isa)(__Tx,transaction,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,34)),findall(__Tx,','(__Tx,flapply(valid_transaction,__Tx)),__List)),fllibexecute_delayed_calls([__List,__Tx],[__List])))).
:-(FLORA_THIS_WORKSPACE(static^tblflapply)(all_invalid_transactions,__List,'_$ctxt'(_CallerModuleVar,36,__newcontextvar1)),','('_$_$_flora''rule_enabled'(36,'all.flr',FLORA_THIS_MODULE_NAME),','(','(FLORA_THIS_WORKSPACE(d^isa)(__Tx,transaction,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,36)),findall(__Tx,','(__Tx,flapply('\\naf',flapply(valid_transaction,__Tx))),__List)),fllibexecute_delayed_calls([__List,__Tx],[__List])))).
:-(FLORA_THIS_WORKSPACE(static^tblflapply)(network_health,__Total,__Valid,__Invalid,__Score,'_$ctxt'(_CallerModuleVar,38,__newcontextvar1)),','('_$_$_flora''rule_enabled'(38,'all.flr',FLORA_THIS_MODULE_NAME),','(','(','(FLORA_THIS_WORKSPACE(d^isa)(__Tx,transaction,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,38)),findall(__Tx,__Tx,__All)),','(length(__All,__Total),','(','(FLORA_THIS_WORKSPACE(d^isa)(__T2,transaction,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar3,38)),findall(__T2,','(__T2,flapply(valid_transaction,__T2)),__Valids)),','(length(__Valids,__Valid),','(is(__Invalid,-(__Total,__Valid)),';'(','(=:=(__Total,0),=(__Score,0)),','(>(__Total,0),is(__Score,/(*(__Valid,100),__Total))))))))),fllibexecute_delayed_calls([__All,__Invalid,__Score,__T2,__Total,__Tx,__Valid,__Valids],[__Invalid,__Score,__Total,__Valid])))).
:-(FLORA_THIS_WORKSPACE(static^tblflapply)(help,'_$ctxt'(_CallerModuleVar,40,__newcontextvar1)),','('_$_$_flora''rule_enabled'(40,'all.flr',FLORA_THIS_MODULE_NAME),','(FLORA_WORKSPACE(\\io,d^tblflapply)(nl,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,40)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(write,'Available queries:','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar3,40)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(nl,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar4,40)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(write,'  valid_transaction(tx1).','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar5,40)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(nl,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar6,40)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(write,'  diagnose_transaction(tx3, ?Problem).','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar7,40)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(nl,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar8,40)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(write,'  marko:address[balance -> ?B].','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar9,40)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(nl,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar10,40)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(write,'  ?Tx:transaction[sender_address -> marko].','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar11,40)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(nl,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar12,40)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(write,'  all_valid_transactions(?List).','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar13,40)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(nl,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar14,40)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(write,'  network_health(?T, ?V, ?I, ?S).','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar15,40)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(nl,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar16,40)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(write,'  valid_block_transactions(block1).','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar17,40)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(nl,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar18,40)),FLORA_WORKSPACE(\\io,d^tblflapply)(nl,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar19,40))))))))))))))))))))).
:-(FLORA_THIS_WORKSPACE(static^tblflapply)(quick_test,'_$ctxt'(_CallerModuleVar,42,__newcontextvar1)),','('_$_$_flora''rule_enabled'(42,'all.flr',FLORA_THIS_MODULE_NAME),','(','(FLORA_WORKSPACE(\\io,d^tblflapply)(nl,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,42)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(write,'Running tests...','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar3,42)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(nl,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar4,42)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(nl,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar5,42)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(write,'Test 1: tx1 should be valid','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar6,42)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(nl,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar7,42)),','(';'(','(FLORA_THIS_WORKSPACE(d^tblflapply)(valid_transaction,tx1,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar8,42)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(write,'  PASS','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar9,42)),!)),FLORA_WORKSPACE(\\io,d^tblflapply)(write,'  FAIL','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar10,42))),','(FLORA_WORKSPACE(\\io,d^tblflapply)(nl,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar11,42)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(nl,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar12,42)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(write,'Test 2: tx3 should be invalid (insufficient funds)','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar13,42)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(nl,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar14,42)),','(';'(','(flibnafdelay(flora_naf(FLORA_THIS_WORKSPACE(tabled_naf_call)(','(FLORA_THIS_WORKSPACE(d^tblflapply)(valid_transaction,tx3,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar15,42)),fllibexecute_delayed_calls([],[]))),[],269,'all.flr')),','(FLORA_WORKSPACE(\\io,d^tblflapply)(write,'  PASS','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar16,42)),!)),FLORA_WORKSPACE(\\io,d^tblflapply)(write,'  FAIL','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar17,42))),','(FLORA_WORKSPACE(\\io,d^tblflapply)(nl,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar18,42)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(diagnose_transaction,tx3,__P3,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar19,42)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(write,'  Reason: ','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar20,42)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(write,__P3,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar21,42)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(nl,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar22,42)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(nl,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar23,42)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(write,'Test 3: tx4 should be invalid (negative amount)','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar24,42)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(nl,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar25,42)),','(';'(','(flibnafdelay(flora_naf(FLORA_THIS_WORKSPACE(tabled_naf_call)(','(FLORA_THIS_WORKSPACE(d^tblflapply)(valid_transaction,tx4,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar26,42)),fllibexecute_delayed_calls([],[]))),[],279,'all.flr')),','(FLORA_WORKSPACE(\\io,d^tblflapply)(write,'  PASS','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar27,42)),!)),FLORA_WORKSPACE(\\io,d^tblflapply)(write,'  FAIL','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar28,42))),','(FLORA_WORKSPACE(\\io,d^tblflapply)(nl,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar29,42)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(diagnose_transaction,tx4,__P4,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar30,42)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(write,'  Reason: ','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar31,42)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(write,__P4,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar32,42)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(nl,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar33,42)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(nl,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar34,42)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(write,'Test 4: Network health','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar35,42)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(nl,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar36,42)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(network_health,__T,__V,__I,__S,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar37,42)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(write,'  Total: ','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar38,42)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(write,__T,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar39,42)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(nl,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar40,42)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(write,'  Valid: ','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar41,42)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(write,__V,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar42,42)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(nl,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar43,42)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(write,'  Invalid: ','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar44,42)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(write,__I,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar45,42)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(nl,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar46,42)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(write,'  Score: ','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar47,42)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(write,__S,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar48,42)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(write,'%','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar49,42)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(nl,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar50,42)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(nl,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar51,42)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(write,'Tests completed','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar52,42)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(nl,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar53,42)),FLORA_WORKSPACE(\\io,d^tblflapply)(nl,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar54,42)))))))))))))))))))))))))))))))))))))))))))))))),fllibexecute_delayed_calls([__I,__P3,__P4,__S,__T,__V],[])))).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Rule signatures %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

?-(fllibinsrulesig(4,'all.flr','_$_$_flora''descr_vars',FLORA_THIS_MODULE_NAME,23,FLORA_THIS_WORKSPACE(d^tblflapply)(positive_amount,__Tx,'_$ctxt'(_CallerModuleVar,4,__newcontextvar1)),','(','(FLORA_THIS_WORKSPACE(d^mvd)(__Tx,amount,__Amount,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar3,4)),FLORA_THIS_WORKSPACE(d^isa)(__Tx,transaction,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,4))),fllibdelayedliteral(>,'all.flr',153,[__Amount,0])),null,'_$_$_flora''rule_enabled'(4,'all.flr',FLORA_THIS_MODULE_NAME),fllibexecute_delayed_calls([__Amount,__Tx],[__Tx]),true)).
?-(fllibinsrulesig(6,'all.flr','_$_$_flora''descr_vars',FLORA_THIS_MODULE_NAME,24,FLORA_THIS_WORKSPACE(d^tblflapply)(different_addresses,__Tx,'_$ctxt'(_CallerModuleVar,6,__newcontextvar1)),','(','(','(FLORA_THIS_WORKSPACE(d^mvd)(__Tx,sender_address,__S,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar3,6)),FLORA_THIS_WORKSPACE(d^mvd)(__Tx,recipient_address,__R,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar4,6))),FLORA_THIS_WORKSPACE(d^isa)(__Tx,transaction,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,6))),fllibdelayedliteral('!==','all.flr',158,[__S,__R])),null,'_$_$_flora''rule_enabled'(6,'all.flr',FLORA_THIS_MODULE_NAME),fllibexecute_delayed_calls([__R,__S,__Tx],[__Tx]),true)).
?-(fllibinsrulesig(8,'all.flr','_$_$_flora''descr_vars',FLORA_THIS_MODULE_NAME,25,FLORA_THIS_WORKSPACE(d^tblflapply)(sufficient_balance,__Tx,'_$ctxt'(_CallerModuleVar,8,__newcontextvar1)),','(','(','(FLORA_THIS_WORKSPACE(d^mvd)(__Tx,sender_address,__S,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar3,8)),FLORA_THIS_WORKSPACE(d^mvd)(__Tx,amount,__A,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar4,8))),FLORA_THIS_WORKSPACE(d^isa)(__Tx,transaction,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,8))),','(','(FLORA_THIS_WORKSPACE(d^mvd)(__S,balance,__B,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar6,8)),FLORA_THIS_WORKSPACE(d^isa)(__S,address,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar5,8))),fllibdelayedliteral(>=,'all.flr',164,[__B,__A]))),null,'_$_$_flora''rule_enabled'(8,'all.flr',FLORA_THIS_MODULE_NAME),fllibexecute_delayed_calls([__A,__B,__S,__Tx],[__Tx]),true)).
?-(fllibinsrulesig(10,'all.flr','_$_$_flora''descr_vars',FLORA_THIS_MODULE_NAME,26,FLORA_THIS_WORKSPACE(d^tblflapply)(valid_signature,__Tx,'_$ctxt'(_CallerModuleVar,10,__newcontextvar1)),','(','(','(FLORA_THIS_WORKSPACE(d^mvd)(__Tx,sender_address,__SenderAddr,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar3,10)),FLORA_THIS_WORKSPACE(d^mvd)(__Tx,digital_signature,__Sig,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar4,10))),FLORA_THIS_WORKSPACE(d^isa)(__Tx,transaction,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,10))),','(','(FLORA_THIS_WORKSPACE(d^mvd)(__SenderAddr,id,__SenderId,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar6,10)),FLORA_THIS_WORKSPACE(d^isa)(__SenderAddr,address,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar5,10))),','(atom_concat(sig_,__SenderId,__Prefix),sub_atom(__Sig,0,__Len,__After,__Prefix)))),null,'_$_$_flora''rule_enabled'(10,'all.flr',FLORA_THIS_MODULE_NAME),fllibexecute_delayed_calls([__After,__Len,__Prefix,__SenderAddr,__SenderId,__Sig,__Tx],[__Tx]),true)).
?-(fllibinsrulesig(12,'all.flr','_$_$_flora''descr_vars',FLORA_THIS_MODULE_NAME,27,FLORA_THIS_WORKSPACE(d^tblflapply)(not_double_spent,__Tx,'_$ctxt'(_CallerModuleVar,12,__newcontextvar1)),','(','(FLORA_THIS_WORKSPACE(d^mvd)(__Tx,tx_id,__TxID,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar3,12)),FLORA_THIS_WORKSPACE(d^isa)(__Tx,transaction,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,12))),flibnafdelay(flora_naf(FLORA_THIS_WORKSPACE(tabled_naf_call)(','(FLORA_THIS_WORKSPACE(d^tblflapply)(spent_transaction,__TxID,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar4,12)),fllibexecute_delayed_calls([__TxID],[]))),[__TxID],176,'all.flr'))),null,'_$_$_flora''rule_enabled'(12,'all.flr',FLORA_THIS_MODULE_NAME),fllibexecute_delayed_calls([__Tx,__TxID],[__Tx]),true)).
?-(fllibinsrulesig(14,'all.flr','_$_$_flora''descr_vars',FLORA_THIS_MODULE_NAME,28,FLORA_THIS_WORKSPACE(d^tblflapply)(spent_transaction,__TxID,'_$ctxt'(_CallerModuleVar,14,__newcontextvar1)),','(','(FLORA_THIS_WORKSPACE(d^mvd)(___B,transactions,__TxList,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar3,14)),FLORA_THIS_WORKSPACE(d^isa)(___B,block,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,14))),','(:(lists,flapply(member,__T,__TxList)),','(FLORA_THIS_WORKSPACE(d^mvd)(__T,tx_id,__TxID,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar5,14)),FLORA_THIS_WORKSPACE(d^isa)(__T,transaction,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar4,14))))),null,'_$_$_flora''rule_enabled'(14,'all.flr',FLORA_THIS_MODULE_NAME),fllibexecute_delayed_calls([__T,__TxID,__TxList,___B],[__TxID]),true)).
?-(fllibinsrulesig(16,'all.flr','_$_$_flora''descr_vars',FLORA_THIS_MODULE_NAME,29,FLORA_THIS_WORKSPACE(d^tblflapply)(is_valid_transaction,__Tx,'_$ctxt'(_CallerModuleVar,16,__newcontextvar1)),','(FLORA_THIS_WORKSPACE(d^isa)(__Tx,transaction,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,16)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(positive_amount,__Tx,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar3,16)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(different_addresses,__Tx,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar4,16)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(sufficient_balance,__Tx,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar5,16)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(valid_signature,__Tx,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar6,16)),FLORA_THIS_WORKSPACE(d^tblflapply)(not_double_spent,__Tx,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar7,16))))))),null,'_$_$_flora''rule_enabled'(16,'all.flr',FLORA_THIS_MODULE_NAME),null,true)).
?-(fllibinsrulesig(18,'all.flr','_$_$_flora''descr_vars',FLORA_THIS_MODULE_NAME,30,FLORA_THIS_WORKSPACE(d^tblflapply)(valid_transaction,__Tx,'_$ctxt'(_CallerModuleVar,18,__newcontextvar1)),FLORA_THIS_WORKSPACE(d^tblflapply)(is_valid_transaction,__Tx,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,18)),null,'_$_$_flora''rule_enabled'(18,'all.flr',FLORA_THIS_MODULE_NAME),null,true)).
?-(fllibinsrulesig(20,'all.flr','_$_$_flora''descr_vars',FLORA_THIS_MODULE_NAME,31,FLORA_THIS_WORKSPACE(d^tblflapply)(diagnose_transaction,__Tx,insufficient_funds,'_$ctxt'(_CallerModuleVar,20,__newcontextvar1)),','(flibnafdelay(flora_naf(FLORA_THIS_WORKSPACE(tabled_naf_call)(','(FLORA_THIS_WORKSPACE(d^tblflapply)(sufficient_balance,__Tx,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,20)),fllibexecute_delayed_calls([__Tx],[]))),[__Tx],197,'all.flr')),!),null,'_$_$_flora''rule_enabled'(20,'all.flr',FLORA_THIS_MODULE_NAME),null,true)).
?-(fllibinsrulesig(22,'all.flr','_$_$_flora''descr_vars',FLORA_THIS_MODULE_NAME,32,FLORA_THIS_WORKSPACE(d^tblflapply)(diagnose_transaction,__Tx,negative_or_zero_amount,'_$ctxt'(_CallerModuleVar,22,__newcontextvar1)),','(flibnafdelay(flora_naf(FLORA_THIS_WORKSPACE(tabled_naf_call)(','(FLORA_THIS_WORKSPACE(d^tblflapply)(positive_amount,__Tx,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,22)),fllibexecute_delayed_calls([__Tx],[]))),[__Tx],200,'all.flr')),!),null,'_$_$_flora''rule_enabled'(22,'all.flr',FLORA_THIS_MODULE_NAME),null,true)).
?-(fllibinsrulesig(24,'all.flr','_$_$_flora''descr_vars',FLORA_THIS_MODULE_NAME,33,FLORA_THIS_WORKSPACE(d^tblflapply)(diagnose_transaction,__Tx,same_sender_receiver,'_$ctxt'(_CallerModuleVar,24,__newcontextvar1)),','(flibnafdelay(flora_naf(FLORA_THIS_WORKSPACE(tabled_naf_call)(','(FLORA_THIS_WORKSPACE(d^tblflapply)(different_addresses,__Tx,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,24)),fllibexecute_delayed_calls([__Tx],[]))),[__Tx],203,'all.flr')),!),null,'_$_$_flora''rule_enabled'(24,'all.flr',FLORA_THIS_MODULE_NAME),null,true)).
?-(fllibinsrulesig(26,'all.flr','_$_$_flora''descr_vars',FLORA_THIS_MODULE_NAME,34,FLORA_THIS_WORKSPACE(d^tblflapply)(diagnose_transaction,__Tx,invalid_signature,'_$ctxt'(_CallerModuleVar,26,__newcontextvar1)),','(flibnafdelay(flora_naf(FLORA_THIS_WORKSPACE(tabled_naf_call)(','(FLORA_THIS_WORKSPACE(d^tblflapply)(valid_signature,__Tx,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,26)),fllibexecute_delayed_calls([__Tx],[]))),[__Tx],206,'all.flr')),!),null,'_$_$_flora''rule_enabled'(26,'all.flr',FLORA_THIS_MODULE_NAME),null,true)).
?-(fllibinsrulesig(28,'all.flr','_$_$_flora''descr_vars',FLORA_THIS_MODULE_NAME,35,FLORA_THIS_WORKSPACE(d^tblflapply)(diagnose_transaction,__Tx,double_spending,'_$ctxt'(_CallerModuleVar,28,__newcontextvar1)),','(flibnafdelay(flora_naf(FLORA_THIS_WORKSPACE(tabled_naf_call)(','(FLORA_THIS_WORKSPACE(d^tblflapply)(not_double_spent,__Tx,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,28)),fllibexecute_delayed_calls([__Tx],[]))),[__Tx],209,'all.flr')),!),null,'_$_$_flora''rule_enabled'(28,'all.flr',FLORA_THIS_MODULE_NAME),null,true)).
?-(fllibinsrulesig(30,'all.flr','_$_$_flora''descr_vars',FLORA_THIS_MODULE_NAME,36,FLORA_THIS_WORKSPACE(d^tblflapply)(diagnose_transaction,__Tx,valid,'_$ctxt'(_CallerModuleVar,30,__newcontextvar1)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(valid_transaction,__Tx,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,30)),!),null,'_$_$_flora''rule_enabled'(30,'all.flr',FLORA_THIS_MODULE_NAME),null,true)).
?-(fllibinsrulesig(32,'all.flr','_$_$_flora''descr_vars',FLORA_THIS_MODULE_NAME,38,FLORA_THIS_WORKSPACE(d^tblflapply)(valid_block_transactions,__Block,'_$ctxt'(_CallerModuleVar,32,__newcontextvar1)),','(','(FLORA_THIS_WORKSPACE(d^mvd)(__Block,transactions,__TxList,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar3,32)),FLORA_THIS_WORKSPACE(d^isa)(__Block,block,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,32))),forall(member(__Tx,__TxList),flapply(valid_transaction,__Tx))),null,'_$_$_flora''rule_enabled'(32,'all.flr',FLORA_THIS_MODULE_NAME),fllibexecute_delayed_calls([__Block,__Tx,__TxList],[__Block]),true)).
?-(fllibinsrulesig(34,'all.flr','_$_$_flora''descr_vars',FLORA_THIS_MODULE_NAME,39,FLORA_THIS_WORKSPACE(d^tblflapply)(all_valid_transactions,__List,'_$ctxt'(_CallerModuleVar,34,__newcontextvar1)),','(FLORA_THIS_WORKSPACE(d^isa)(__Tx,transaction,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,34)),findall(__Tx,','(__Tx,flapply(valid_transaction,__Tx)),__List)),null,'_$_$_flora''rule_enabled'(34,'all.flr',FLORA_THIS_MODULE_NAME),fllibexecute_delayed_calls([__List,__Tx],[__List]),true)).
?-(fllibinsrulesig(36,'all.flr','_$_$_flora''descr_vars',FLORA_THIS_MODULE_NAME,40,FLORA_THIS_WORKSPACE(d^tblflapply)(all_invalid_transactions,__List,'_$ctxt'(_CallerModuleVar,36,__newcontextvar1)),','(FLORA_THIS_WORKSPACE(d^isa)(__Tx,transaction,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,36)),findall(__Tx,','(__Tx,flapply('\\naf',flapply(valid_transaction,__Tx))),__List)),null,'_$_$_flora''rule_enabled'(36,'all.flr',FLORA_THIS_MODULE_NAME),fllibexecute_delayed_calls([__List,__Tx],[__List]),true)).
?-(fllibinsrulesig(38,'all.flr','_$_$_flora''descr_vars',FLORA_THIS_MODULE_NAME,41,FLORA_THIS_WORKSPACE(d^tblflapply)(network_health,__Total,__Valid,__Invalid,__Score,'_$ctxt'(_CallerModuleVar,38,__newcontextvar1)),','(','(FLORA_THIS_WORKSPACE(d^isa)(__Tx,transaction,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,38)),findall(__Tx,__Tx,__All)),','(length(__All,__Total),','(','(FLORA_THIS_WORKSPACE(d^isa)(__T2,transaction,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar3,38)),findall(__T2,','(__T2,flapply(valid_transaction,__T2)),__Valids)),','(length(__Valids,__Valid),','(is(__Invalid,-(__Total,__Valid)),';'(','(=:=(__Total,0),=(__Score,0)),','(>(__Total,0),is(__Score,/(*(__Valid,100),__Total))))))))),null,'_$_$_flora''rule_enabled'(38,'all.flr',FLORA_THIS_MODULE_NAME),fllibexecute_delayed_calls([__All,__Invalid,__Score,__T2,__Total,__Tx,__Valid,__Valids],[__Invalid,__Score,__Total,__Valid]),true)).
?-(fllibinsrulesig(40,'all.flr','_$_$_flora''descr_vars',FLORA_THIS_MODULE_NAME,42,FLORA_THIS_WORKSPACE(d^tblflapply)(help,'_$ctxt'(_CallerModuleVar,40,__newcontextvar1)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(nl,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,40)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(write,'Available queries:','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar3,40)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(nl,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar4,40)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(write,'  valid_transaction(tx1).','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar5,40)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(nl,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar6,40)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(write,'  diagnose_transaction(tx3, ?Problem).','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar7,40)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(nl,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar8,40)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(write,'  marko:address[balance -> ?B].','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar9,40)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(nl,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar10,40)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(write,'  ?Tx:transaction[sender_address -> marko].','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar11,40)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(nl,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar12,40)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(write,'  all_valid_transactions(?List).','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar13,40)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(nl,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar14,40)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(write,'  network_health(?T, ?V, ?I, ?S).','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar15,40)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(nl,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar16,40)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(write,'  valid_block_transactions(block1).','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar17,40)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(nl,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar18,40)),FLORA_WORKSPACE(\\io,d^tblflapply)(nl,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar19,40))))))))))))))))))),null,'_$_$_flora''rule_enabled'(40,'all.flr',FLORA_THIS_MODULE_NAME),null,true)).
?-(fllibinsrulesig(42,'all.flr','_$_$_flora''descr_vars',FLORA_THIS_MODULE_NAME,43,FLORA_THIS_WORKSPACE(d^tblflapply)(quick_test,'_$ctxt'(_CallerModuleVar,42,__newcontextvar1)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(nl,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,42)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(write,'Running tests...','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar3,42)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(nl,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar4,42)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(nl,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar5,42)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(write,'Test 1: tx1 should be valid','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar6,42)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(nl,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar7,42)),','(';'(','(FLORA_THIS_WORKSPACE(d^tblflapply)(valid_transaction,tx1,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar8,42)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(write,'  PASS','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar9,42)),!)),FLORA_WORKSPACE(\\io,d^tblflapply)(write,'  FAIL','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar10,42))),','(FLORA_WORKSPACE(\\io,d^tblflapply)(nl,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar11,42)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(nl,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar12,42)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(write,'Test 2: tx3 should be invalid (insufficient funds)','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar13,42)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(nl,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar14,42)),','(';'(','(flibnafdelay(flora_naf(FLORA_THIS_WORKSPACE(tabled_naf_call)(','(FLORA_THIS_WORKSPACE(d^tblflapply)(valid_transaction,tx3,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar15,42)),fllibexecute_delayed_calls([],[]))),[],269,'all.flr')),','(FLORA_WORKSPACE(\\io,d^tblflapply)(write,'  PASS','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar16,42)),!)),FLORA_WORKSPACE(\\io,d^tblflapply)(write,'  FAIL','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar17,42))),','(FLORA_WORKSPACE(\\io,d^tblflapply)(nl,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar18,42)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(diagnose_transaction,tx3,__P3,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar19,42)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(write,'  Reason: ','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar20,42)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(write,__P3,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar21,42)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(nl,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar22,42)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(nl,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar23,42)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(write,'Test 3: tx4 should be invalid (negative amount)','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar24,42)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(nl,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar25,42)),','(';'(','(flibnafdelay(flora_naf(FLORA_THIS_WORKSPACE(tabled_naf_call)(','(FLORA_THIS_WORKSPACE(d^tblflapply)(valid_transaction,tx4,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar26,42)),fllibexecute_delayed_calls([],[]))),[],279,'all.flr')),','(FLORA_WORKSPACE(\\io,d^tblflapply)(write,'  PASS','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar27,42)),!)),FLORA_WORKSPACE(\\io,d^tblflapply)(write,'  FAIL','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar28,42))),','(FLORA_WORKSPACE(\\io,d^tblflapply)(nl,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar29,42)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(diagnose_transaction,tx4,__P4,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar30,42)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(write,'  Reason: ','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar31,42)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(write,__P4,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar32,42)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(nl,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar33,42)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(nl,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar34,42)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(write,'Test 4: Network health','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar35,42)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(nl,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar36,42)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(network_health,__T,__V,__I,__S,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar37,42)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(write,'  Total: ','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar38,42)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(write,__T,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar39,42)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(nl,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar40,42)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(write,'  Valid: ','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar41,42)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(write,__V,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar42,42)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(nl,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar43,42)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(write,'  Invalid: ','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar44,42)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(write,__I,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar45,42)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(nl,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar46,42)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(write,'  Score: ','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar47,42)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(write,__S,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar48,42)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(write,'%','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar49,42)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(nl,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar50,42)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(nl,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar51,42)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(write,'Tests completed','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar52,42)),','(FLORA_WORKSPACE(\\io,d^tblflapply)(nl,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar53,42)),FLORA_WORKSPACE(\\io,d^tblflapply)(nl,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar54,42)))))))))))))))))))))))))))))))))))))))))))))))),null,'_$_$_flora''rule_enabled'(42,'all.flr',FLORA_THIS_MODULE_NAME),fllibexecute_delayed_calls([__I,__P3,__P4,__S,__T,__V],[]),true)).


%%%%%%%%%%%%%%%%%%%%%%%%% Signatures for latent queries %%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%




%%%%%%%%%%%%%%%%%%%%%%% Queries found in the source file %%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

?-(fllibprogramans(','('_$_$_flora''silent_equal'(_CallerModuleVar,FLORA_THIS_MODULE_NAME),','(FLORA_WORKSPACE(\\io,d^tblflapply)(write,'all.flr loaded','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,__newcontextvar1)),FLORA_WORKSPACE(\\io,d^tblflapply)(nl,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar4,__newcontextvar3)))),[])).

 
#if !defined(FLORA_FLS2_FILENAME)
#if !defined(FLORA_LOADDYN_DATA)
#define FLORA_LOADDYN_DATA
#endif
#mode save
#mode nocomment "%"
#define FLORA_FLS2_FILENAME  'all.fls2'
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

