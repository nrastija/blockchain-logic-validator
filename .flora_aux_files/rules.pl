
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

#define FLORA_COMPILATION_ID 11

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
#define FLORA_THIS_FILENAME  'rules.flr'
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
  file: syslibinc/flrcolset_inc.flh

  Author(s): Guizhen Yang

  This file is automatically included by the FLORA-2 compiler.
************************************************************************/

:-(compiler_options([xpp_on])).

#mode standard Prolog

#if !defined(FLORA_TERMS_FLH)
#define FLORA_TERMS_FLH
#include "flora_terms.flh"
#endif

?-(:(flrlibman,flora_load_library(FLLIBCOLLECTSET))).

/***********************************************************************/

/************************************************************************
  file: libinc/flrbasetype_inc.flh

  Author(s): Michael Kifer

  This file is automatically included by the Flora-2 compiler.
************************************************************************/

:-(compiler_options([xpp_on])).

#mode standard Prolog

#if !defined(FLORA_TERMS_FLH)
#define FLORA_TERMS_FLH
#include "flora_terms.flh"
#endif

?-(':'(flrlibman,flora_load_system_module(FLSYSMODBASETYPE))).

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
#define FLORA_FDB_FILENAME  'rules.fdb'
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
#define FLORA_FLM_FILENAME  'rules.flm'
#mode restore
?-(:(flrutils,flora_loaddyn_data(FLORA_FLM_FILENAME,FLORA_THIS_MODULE_NAME,'flm'))).
#else
#if !defined(FLORA_READ_CANONICAL_AND_INSERT)
#define FLORA_READ_CANONICAL_AND_INSERT
#endif
?-(:(flrutils,flora_read_descriptor_metafacts_canonical_and_insert(rules,_ErrNum))).
#endif

 
#if !defined(FLORA_FLD_FILENAME)
#if !defined(FLORA_LOADDYN_DATA)
#define FLORA_LOADDYN_DATA
#endif
#mode save
#mode nocomment "%"
#define FLORA_FLD_FILENAME  'rules.fld'
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
#define FLORA_FLS_FILENAME  'rules.fls'
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

:-(FLORA_THIS_WORKSPACE(static^tblflapply)(positive_amount,__Tx,'_$ctxt'(_CallerModuleVar,4,__newcontextvar1)),','('_$_$_flora''rule_enabled'(4,'rules.flr',FLORA_THIS_MODULE_NAME),','(','(','(FLORA_THIS_WORKSPACE(d^mvd)(__Tx,amount,__Amount,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar3,4)),FLORA_THIS_WORKSPACE(d^isa)(__Tx,transaction,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,4))),fllibdelayedliteral(>,'rules.flr',8,[__Amount,0])),fllibexecute_delayed_calls([__Amount,__Tx],[__Tx])))).
:-(FLORA_THIS_WORKSPACE(static^tblflapply)(different_addresses,__Tx,'_$ctxt'(_CallerModuleVar,6,__newcontextvar1)),','('_$_$_flora''rule_enabled'(6,'rules.flr',FLORA_THIS_MODULE_NAME),','(','(','(','(FLORA_THIS_WORKSPACE(d^mvd)(__Tx,sender_address,__Sender,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar3,6)),FLORA_THIS_WORKSPACE(d^mvd)(__Tx,recipient_address,__Recipient,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar4,6))),FLORA_THIS_WORKSPACE(d^isa)(__Tx,transaction,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,6))),fllibdelayedliteral('!==','rules.flr',13,[__Sender,__Recipient])),fllibexecute_delayed_calls([__Recipient,__Sender,__Tx],[__Tx])))).
:-(FLORA_THIS_WORKSPACE(static^tblflapply)(sufficient_balance,__Tx,'_$ctxt'(_CallerModuleVar,8,__newcontextvar1)),','('_$_$_flora''rule_enabled'(8,'rules.flr',FLORA_THIS_MODULE_NAME),','(','(','(','(FLORA_THIS_WORKSPACE(d^mvd)(__Tx,sender_address,__SenderAddr,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar3,8)),FLORA_THIS_WORKSPACE(d^mvd)(__Tx,amount,__Amount,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar4,8))),FLORA_THIS_WORKSPACE(d^isa)(__Tx,transaction,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,8))),','(','(FLORA_THIS_WORKSPACE(d^mvd)(__SenderAddr,balance,__Balance,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar6,8)),FLORA_THIS_WORKSPACE(d^isa)(__SenderAddr,address,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar5,8))),fllibdelayedliteral(>=,'rules.flr',19,[__Balance,__Amount]))),fllibexecute_delayed_calls([__Amount,__Balance,__SenderAddr,__Tx],[__Tx])))).
:-(FLORA_THIS_WORKSPACE(static^tblflapply)(valid_signature,__Tx,'_$ctxt'(_CallerModuleVar,10,__newcontextvar1)),','('_$_$_flora''rule_enabled'(10,'rules.flr',FLORA_THIS_MODULE_NAME),','(','(','(','(FLORA_THIS_WORKSPACE(d^mvd)(__Tx,sender_address,__SenderAddr,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar3,10)),FLORA_THIS_WORKSPACE(d^mvd)(__Tx,digital_signature,__Sig,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar4,10))),FLORA_THIS_WORKSPACE(d^isa)(__Tx,transaction,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,10))),','(','(FLORA_THIS_WORKSPACE(d^mvd)(__SenderAddr,id,__SenderId,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar6,10)),FLORA_THIS_WORKSPACE(d^isa)(__SenderAddr,address,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar5,10))),','(atom_concat(sig_,__SenderId,__Prefix),sub_atom(__Sig,0,'_','_',__Prefix)))),fllibexecute_delayed_calls([__Prefix,__SenderAddr,__SenderId,__Sig,__Tx],[__Tx])))).
:-(FLORA_THIS_WORKSPACE(static^tblflapply)(not_double_spent,__Tx,'_$ctxt'(_CallerModuleVar,12,__newcontextvar1)),','('_$_$_flora''rule_enabled'(12,'rules.flr',FLORA_THIS_MODULE_NAME),','(','(','(FLORA_THIS_WORKSPACE(d^mvd)(__Tx,tx_id,__TxID,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar3,12)),FLORA_THIS_WORKSPACE(d^isa)(__Tx,transaction,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,12))),flibnafdelay(flora_naf(FLORA_THIS_WORKSPACE(tabled_naf_call)(','(FLORA_THIS_WORKSPACE(d^tblflapply)(spent_transaction,__TxID,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar4,12)),fllibexecute_delayed_calls([__TxID],[]))),[__TxID],31,'rules.flr'))),fllibexecute_delayed_calls([__Tx,__TxID],[__Tx])))).
:-(FLORA_THIS_WORKSPACE(static^tblflapply)(spent_transaction,__TxID,'_$ctxt'(_CallerModuleVar,14,__newcontextvar1)),','('_$_$_flora''rule_enabled'(14,'rules.flr',FLORA_THIS_MODULE_NAME),','(','(','(FLORA_THIS_WORKSPACE(d^mvd)(__Block,transactions,__TxList,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar3,14)),FLORA_THIS_WORKSPACE(d^isa)(__Block,block,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,14))),','(member(__Tx,__TxList),','(FLORA_THIS_WORKSPACE(d^mvd)(__Tx,tx_id,__TxID,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar5,14)),FLORA_THIS_WORKSPACE(d^isa)(__Tx,transaction,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar4,14))))),fllibexecute_delayed_calls([__Block,__Tx,__TxID,__TxList],[__TxID])))).
:-(FLORA_THIS_WORKSPACE(static^tblflapply)(valid_transaction,__Tx,'_$ctxt'(_CallerModuleVar,16,__newcontextvar1)),','('_$_$_flora''rule_enabled'(16,'rules.flr',FLORA_THIS_MODULE_NAME),','(FLORA_THIS_WORKSPACE(d^tblflapply)(positive_amount,__Tx,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,16)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(different_addresses,__Tx,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar3,16)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(sufficient_balance,__Tx,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar4,16)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(valid_signature,__Tx,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar5,16)),FLORA_THIS_WORKSPACE(d^tblflapply)(not_double_spent,__Tx,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar6,16)))))))).
:-(FLORA_THIS_WORKSPACE(static^tblflapply)(diagnose_transaction,__Tx,insufficient_funds,'_$ctxt'(_CallerModuleVar,18,__newcontextvar1)),','('_$_$_flora''rule_enabled'(18,'rules.flr',FLORA_THIS_MODULE_NAME),','(flibnafdelay(flora_naf(FLORA_THIS_WORKSPACE(tabled_naf_call)(','(FLORA_THIS_WORKSPACE(d^tblflapply)(sufficient_balance,__Tx,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,18)),fllibexecute_delayed_calls([__Tx],[]))),[__Tx],48,'rules.flr')),!))).
:-(FLORA_THIS_WORKSPACE(static^tblflapply)(diagnose_transaction,__Tx,negative_or_zero_amount,'_$ctxt'(_CallerModuleVar,20,__newcontextvar1)),','('_$_$_flora''rule_enabled'(20,'rules.flr',FLORA_THIS_MODULE_NAME),','(flibnafdelay(flora_naf(FLORA_THIS_WORKSPACE(tabled_naf_call)(','(FLORA_THIS_WORKSPACE(d^tblflapply)(positive_amount,__Tx,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,20)),fllibexecute_delayed_calls([__Tx],[]))),[__Tx],52,'rules.flr')),!))).
:-(FLORA_THIS_WORKSPACE(static^tblflapply)(diagnose_transaction,__Tx,same_sender_receiver,'_$ctxt'(_CallerModuleVar,22,__newcontextvar1)),','('_$_$_flora''rule_enabled'(22,'rules.flr',FLORA_THIS_MODULE_NAME),','(flibnafdelay(flora_naf(FLORA_THIS_WORKSPACE(tabled_naf_call)(','(FLORA_THIS_WORKSPACE(d^tblflapply)(different_addresses,__Tx,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,22)),fllibexecute_delayed_calls([__Tx],[]))),[__Tx],56,'rules.flr')),!))).
:-(FLORA_THIS_WORKSPACE(static^tblflapply)(diagnose_transaction,__Tx,invalid_signature,'_$ctxt'(_CallerModuleVar,24,__newcontextvar1)),','('_$_$_flora''rule_enabled'(24,'rules.flr',FLORA_THIS_MODULE_NAME),','(flibnafdelay(flora_naf(FLORA_THIS_WORKSPACE(tabled_naf_call)(','(FLORA_THIS_WORKSPACE(d^tblflapply)(valid_signature,__Tx,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,24)),fllibexecute_delayed_calls([__Tx],[]))),[__Tx],60,'rules.flr')),!))).
:-(FLORA_THIS_WORKSPACE(static^tblflapply)(diagnose_transaction,__Tx,double_spending,'_$ctxt'(_CallerModuleVar,26,__newcontextvar1)),','('_$_$_flora''rule_enabled'(26,'rules.flr',FLORA_THIS_MODULE_NAME),','(flibnafdelay(flora_naf(FLORA_THIS_WORKSPACE(tabled_naf_call)(','(FLORA_THIS_WORKSPACE(d^tblflapply)(not_double_spent,__Tx,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,26)),fllibexecute_delayed_calls([__Tx],[]))),[__Tx],64,'rules.flr')),!))).
:-(FLORA_THIS_WORKSPACE(static^tblflapply)(diagnose_transaction,__Tx,valid,'_$ctxt'(_CallerModuleVar,28,__newcontextvar1)),','('_$_$_flora''rule_enabled'(28,'rules.flr',FLORA_THIS_MODULE_NAME),','(FLORA_THIS_WORKSPACE(d^tblflapply)(valid_transaction,__Tx,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,28)),!))).
:-(FLORA_THIS_WORKSPACE(static^tblflapply)(valid_block_transactions,__Block,'_$ctxt'(_CallerModuleVar,30,__newcontextvar1)),','('_$_$_flora''rule_enabled'(30,'rules.flr',FLORA_THIS_MODULE_NAME),','(','(','(FLORA_THIS_WORKSPACE(d^mvd)(__Block,transactions,__TxList,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar3,30)),FLORA_THIS_WORKSPACE(d^isa)(__Block,block,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,30))),forall(member(__Tx,__TxList),flapply(valid_transaction,__Tx))),fllibexecute_delayed_calls([__Block,__Tx,__TxList],[__Block])))).
:-(FLORA_THIS_WORKSPACE(static^tblflapply)(all_valid_transactions,__List,'_$ctxt'(_CallerModuleVar,32,__newcontextvar1)),','('_$_$_flora''rule_enabled'(32,'rules.flr',FLORA_THIS_MODULE_NAME),','(fllibsetof(__newdontcarevar3,[],[],','(FLORA_WORKSPACE(\\basetype,d^tblflapply)(valid_transaction,__newdontcarevar3,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,32)),fllibexecute_delayed_calls([__newdontcarevar3],[])),__newvar4),FLORA_WORKSPACE(\\basetype,d^meth)(__newvar4,flapply(collect,__List),'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar5,32))))).
:-(FLORA_THIS_WORKSPACE(static^tblflapply)(all_invalid_transactions,__List,'_$ctxt'(_CallerModuleVar,34,__newcontextvar1)),','('_$_$_flora''rule_enabled'(34,'rules.flr',FLORA_THIS_MODULE_NAME),','(fllibsetof(__newdontcarevar4,[],[],','(','(FLORA_WORKSPACE(\\basetype,d^isa)(__newdontcarevar4,transaction,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,34)),flibnafdelay(flora_naf(FLORA_THIS_WORKSPACE(tabled_naf_call)(','(FLORA_WORKSPACE(\\basetype,d^tblflapply)(valid_transaction,__newdontcarevar4,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar3,34)),fllibexecute_delayed_calls([__newdontcarevar4],[]))),[__newdontcarevar4],83,'rules.flr'))),fllibexecute_delayed_calls([__newdontcarevar4],[])),__newvar5),FLORA_WORKSPACE(\\basetype,d^meth)(__newvar5,flapply(collect,__List),'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar6,34))))).
:-(FLORA_THIS_WORKSPACE(static^tblflapply)(network_health,__Total,__Valid,__Invalid,__HealthScore,'_$ctxt'(_CallerModuleVar,36,__newcontextvar1)),','('_$_$_flora''rule_enabled'(36,'rules.flr',FLORA_THIS_MODULE_NAME),','(','(','(FLORA_THIS_WORKSPACE(d^tblflapply)(findall,__Tx,__Tx,__AllTx,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar3,36)),FLORA_THIS_WORKSPACE(d^isa)(__Tx,transaction,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,36))),','(length(__AllTx,__Total),','(FLORA_THIS_WORKSPACE(d^tblflapply)(findall,__Tx,flapply(valid_transaction,__Tx),__ValidTx,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar4,36)),','(length(__ValidTx,__Valid),','(fllibdelayedliteral('\\is','rules.flr',90,[__Invalid,-(__Total,__Valid)]),fllibdelayedliteral('\\is','rules.flr',91,[__HealthScore,/(*(__Valid,100),__Total)])))))),fllibexecute_delayed_calls([__AllTx,__HealthScore,__Invalid,__Total,__Tx,__Valid,__ValidTx],[__HealthScore,__Invalid,__Total,__Valid])))).
:-(FLORA_THIS_WORKSPACE(static^tblflapply)(suspicious_transaction,__Tx,large_amount,'_$ctxt'(_CallerModuleVar,38,__newcontextvar1)),','('_$_$_flora''rule_enabled'(38,'rules.flr',FLORA_THIS_MODULE_NAME),','(','(','(FLORA_THIS_WORKSPACE(d^mvd)(__Tx,amount,__Amount,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar3,38)),FLORA_THIS_WORKSPACE(d^isa)(__Tx,transaction,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,38))),fllibdelayedliteral(>,'rules.flr',95,[__Amount,500])),fllibexecute_delayed_calls([__Amount,__Tx],[__Tx])))).
:-(FLORA_THIS_WORKSPACE(static^tblflapply)(suspicious_transaction,__Tx,round_number,'_$ctxt'(_CallerModuleVar,40,__newcontextvar1)),','('_$_$_flora''rule_enabled'(40,'rules.flr',FLORA_THIS_MODULE_NAME),','(','(','(FLORA_THIS_WORKSPACE(d^mvd)(__Tx,amount,__Amount,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar3,40)),FLORA_THIS_WORKSPACE(d^isa)(__Tx,transaction,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,40))),','(fllibdelayedliteral(>,'rules.flr',99,[__Amount,0]),','(fllibdelayedliteral('\\is','rules.flr',100,[__Remainder,mod(__Amount,100)]),=(__Remainder,0)))),fllibexecute_delayed_calls([__Amount,__Remainder,__Tx],[__Tx])))).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Rule signatures %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

?-(fllibinsrulesig(4,'rules.flr','_$_$_flora''descr_vars',FLORA_THIS_MODULE_NAME,3,FLORA_THIS_WORKSPACE(d^tblflapply)(positive_amount,__Tx,'_$ctxt'(_CallerModuleVar,4,__newcontextvar1)),','(','(FLORA_THIS_WORKSPACE(d^mvd)(__Tx,amount,__Amount,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar3,4)),FLORA_THIS_WORKSPACE(d^isa)(__Tx,transaction,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,4))),fllibdelayedliteral(>,'rules.flr',8,[__Amount,0])),null,'_$_$_flora''rule_enabled'(4,'rules.flr',FLORA_THIS_MODULE_NAME),fllibexecute_delayed_calls([__Amount,__Tx],[__Tx]),true)).
?-(fllibinsrulesig(6,'rules.flr','_$_$_flora''descr_vars',FLORA_THIS_MODULE_NAME,4,FLORA_THIS_WORKSPACE(d^tblflapply)(different_addresses,__Tx,'_$ctxt'(_CallerModuleVar,6,__newcontextvar1)),','(','(','(FLORA_THIS_WORKSPACE(d^mvd)(__Tx,sender_address,__Sender,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar3,6)),FLORA_THIS_WORKSPACE(d^mvd)(__Tx,recipient_address,__Recipient,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar4,6))),FLORA_THIS_WORKSPACE(d^isa)(__Tx,transaction,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,6))),fllibdelayedliteral('!==','rules.flr',13,[__Sender,__Recipient])),null,'_$_$_flora''rule_enabled'(6,'rules.flr',FLORA_THIS_MODULE_NAME),fllibexecute_delayed_calls([__Recipient,__Sender,__Tx],[__Tx]),true)).
?-(fllibinsrulesig(8,'rules.flr','_$_$_flora''descr_vars',FLORA_THIS_MODULE_NAME,5,FLORA_THIS_WORKSPACE(d^tblflapply)(sufficient_balance,__Tx,'_$ctxt'(_CallerModuleVar,8,__newcontextvar1)),','(','(','(FLORA_THIS_WORKSPACE(d^mvd)(__Tx,sender_address,__SenderAddr,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar3,8)),FLORA_THIS_WORKSPACE(d^mvd)(__Tx,amount,__Amount,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar4,8))),FLORA_THIS_WORKSPACE(d^isa)(__Tx,transaction,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,8))),','(','(FLORA_THIS_WORKSPACE(d^mvd)(__SenderAddr,balance,__Balance,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar6,8)),FLORA_THIS_WORKSPACE(d^isa)(__SenderAddr,address,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar5,8))),fllibdelayedliteral(>=,'rules.flr',19,[__Balance,__Amount]))),null,'_$_$_flora''rule_enabled'(8,'rules.flr',FLORA_THIS_MODULE_NAME),fllibexecute_delayed_calls([__Amount,__Balance,__SenderAddr,__Tx],[__Tx]),true)).
?-(fllibinsrulesig(10,'rules.flr','_$_$_flora''descr_vars',FLORA_THIS_MODULE_NAME,6,FLORA_THIS_WORKSPACE(d^tblflapply)(valid_signature,__Tx,'_$ctxt'(_CallerModuleVar,10,__newcontextvar1)),','(','(','(FLORA_THIS_WORKSPACE(d^mvd)(__Tx,sender_address,__SenderAddr,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar3,10)),FLORA_THIS_WORKSPACE(d^mvd)(__Tx,digital_signature,__Sig,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar4,10))),FLORA_THIS_WORKSPACE(d^isa)(__Tx,transaction,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,10))),','(','(FLORA_THIS_WORKSPACE(d^mvd)(__SenderAddr,id,__SenderId,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar6,10)),FLORA_THIS_WORKSPACE(d^isa)(__SenderAddr,address,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar5,10))),','(atom_concat(sig_,__SenderId,__Prefix),sub_atom(__Sig,0,'_','_',__Prefix)))),null,'_$_$_flora''rule_enabled'(10,'rules.flr',FLORA_THIS_MODULE_NAME),fllibexecute_delayed_calls([__Prefix,__SenderAddr,__SenderId,__Sig,__Tx],[__Tx]),true)).
?-(fllibinsrulesig(12,'rules.flr','_$_$_flora''descr_vars',FLORA_THIS_MODULE_NAME,7,FLORA_THIS_WORKSPACE(d^tblflapply)(not_double_spent,__Tx,'_$ctxt'(_CallerModuleVar,12,__newcontextvar1)),','(','(FLORA_THIS_WORKSPACE(d^mvd)(__Tx,tx_id,__TxID,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar3,12)),FLORA_THIS_WORKSPACE(d^isa)(__Tx,transaction,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,12))),flibnafdelay(flora_naf(FLORA_THIS_WORKSPACE(tabled_naf_call)(','(FLORA_THIS_WORKSPACE(d^tblflapply)(spent_transaction,__TxID,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar4,12)),fllibexecute_delayed_calls([__TxID],[]))),[__TxID],31,'rules.flr'))),null,'_$_$_flora''rule_enabled'(12,'rules.flr',FLORA_THIS_MODULE_NAME),fllibexecute_delayed_calls([__Tx,__TxID],[__Tx]),true)).
?-(fllibinsrulesig(14,'rules.flr','_$_$_flora''descr_vars',FLORA_THIS_MODULE_NAME,8,FLORA_THIS_WORKSPACE(d^tblflapply)(spent_transaction,__TxID,'_$ctxt'(_CallerModuleVar,14,__newcontextvar1)),','(','(FLORA_THIS_WORKSPACE(d^mvd)(__Block,transactions,__TxList,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar3,14)),FLORA_THIS_WORKSPACE(d^isa)(__Block,block,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,14))),','(member(__Tx,__TxList),','(FLORA_THIS_WORKSPACE(d^mvd)(__Tx,tx_id,__TxID,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar5,14)),FLORA_THIS_WORKSPACE(d^isa)(__Tx,transaction,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar4,14))))),null,'_$_$_flora''rule_enabled'(14,'rules.flr',FLORA_THIS_MODULE_NAME),fllibexecute_delayed_calls([__Block,__Tx,__TxID,__TxList],[__TxID]),true)).
?-(fllibinsrulesig(16,'rules.flr','_$_$_flora''descr_vars',FLORA_THIS_MODULE_NAME,9,FLORA_THIS_WORKSPACE(d^tblflapply)(valid_transaction,__Tx,'_$ctxt'(_CallerModuleVar,16,__newcontextvar1)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(positive_amount,__Tx,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,16)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(different_addresses,__Tx,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar3,16)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(sufficient_balance,__Tx,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar4,16)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(valid_signature,__Tx,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar5,16)),FLORA_THIS_WORKSPACE(d^tblflapply)(not_double_spent,__Tx,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar6,16)))))),null,'_$_$_flora''rule_enabled'(16,'rules.flr',FLORA_THIS_MODULE_NAME),null,true)).
?-(fllibinsrulesig(18,'rules.flr','_$_$_flora''descr_vars',FLORA_THIS_MODULE_NAME,10,FLORA_THIS_WORKSPACE(d^tblflapply)(diagnose_transaction,__Tx,insufficient_funds,'_$ctxt'(_CallerModuleVar,18,__newcontextvar1)),','(flibnafdelay(flora_naf(FLORA_THIS_WORKSPACE(tabled_naf_call)(','(FLORA_THIS_WORKSPACE(d^tblflapply)(sufficient_balance,__Tx,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,18)),fllibexecute_delayed_calls([__Tx],[]))),[__Tx],48,'rules.flr')),!),null,'_$_$_flora''rule_enabled'(18,'rules.flr',FLORA_THIS_MODULE_NAME),null,true)).
?-(fllibinsrulesig(20,'rules.flr','_$_$_flora''descr_vars',FLORA_THIS_MODULE_NAME,11,FLORA_THIS_WORKSPACE(d^tblflapply)(diagnose_transaction,__Tx,negative_or_zero_amount,'_$ctxt'(_CallerModuleVar,20,__newcontextvar1)),','(flibnafdelay(flora_naf(FLORA_THIS_WORKSPACE(tabled_naf_call)(','(FLORA_THIS_WORKSPACE(d^tblflapply)(positive_amount,__Tx,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,20)),fllibexecute_delayed_calls([__Tx],[]))),[__Tx],52,'rules.flr')),!),null,'_$_$_flora''rule_enabled'(20,'rules.flr',FLORA_THIS_MODULE_NAME),null,true)).
?-(fllibinsrulesig(22,'rules.flr','_$_$_flora''descr_vars',FLORA_THIS_MODULE_NAME,12,FLORA_THIS_WORKSPACE(d^tblflapply)(diagnose_transaction,__Tx,same_sender_receiver,'_$ctxt'(_CallerModuleVar,22,__newcontextvar1)),','(flibnafdelay(flora_naf(FLORA_THIS_WORKSPACE(tabled_naf_call)(','(FLORA_THIS_WORKSPACE(d^tblflapply)(different_addresses,__Tx,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,22)),fllibexecute_delayed_calls([__Tx],[]))),[__Tx],56,'rules.flr')),!),null,'_$_$_flora''rule_enabled'(22,'rules.flr',FLORA_THIS_MODULE_NAME),null,true)).
?-(fllibinsrulesig(24,'rules.flr','_$_$_flora''descr_vars',FLORA_THIS_MODULE_NAME,13,FLORA_THIS_WORKSPACE(d^tblflapply)(diagnose_transaction,__Tx,invalid_signature,'_$ctxt'(_CallerModuleVar,24,__newcontextvar1)),','(flibnafdelay(flora_naf(FLORA_THIS_WORKSPACE(tabled_naf_call)(','(FLORA_THIS_WORKSPACE(d^tblflapply)(valid_signature,__Tx,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,24)),fllibexecute_delayed_calls([__Tx],[]))),[__Tx],60,'rules.flr')),!),null,'_$_$_flora''rule_enabled'(24,'rules.flr',FLORA_THIS_MODULE_NAME),null,true)).
?-(fllibinsrulesig(26,'rules.flr','_$_$_flora''descr_vars',FLORA_THIS_MODULE_NAME,14,FLORA_THIS_WORKSPACE(d^tblflapply)(diagnose_transaction,__Tx,double_spending,'_$ctxt'(_CallerModuleVar,26,__newcontextvar1)),','(flibnafdelay(flora_naf(FLORA_THIS_WORKSPACE(tabled_naf_call)(','(FLORA_THIS_WORKSPACE(d^tblflapply)(not_double_spent,__Tx,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,26)),fllibexecute_delayed_calls([__Tx],[]))),[__Tx],64,'rules.flr')),!),null,'_$_$_flora''rule_enabled'(26,'rules.flr',FLORA_THIS_MODULE_NAME),null,true)).
?-(fllibinsrulesig(28,'rules.flr','_$_$_flora''descr_vars',FLORA_THIS_MODULE_NAME,15,FLORA_THIS_WORKSPACE(d^tblflapply)(diagnose_transaction,__Tx,valid,'_$ctxt'(_CallerModuleVar,28,__newcontextvar1)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(valid_transaction,__Tx,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,28)),!),null,'_$_$_flora''rule_enabled'(28,'rules.flr',FLORA_THIS_MODULE_NAME),null,true)).
?-(fllibinsrulesig(30,'rules.flr','_$_$_flora''descr_vars',FLORA_THIS_MODULE_NAME,17,FLORA_THIS_WORKSPACE(d^tblflapply)(valid_block_transactions,__Block,'_$ctxt'(_CallerModuleVar,30,__newcontextvar1)),','(','(FLORA_THIS_WORKSPACE(d^mvd)(__Block,transactions,__TxList,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar3,30)),FLORA_THIS_WORKSPACE(d^isa)(__Block,block,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,30))),forall(member(__Tx,__TxList),flapply(valid_transaction,__Tx))),null,'_$_$_flora''rule_enabled'(30,'rules.flr',FLORA_THIS_MODULE_NAME),fllibexecute_delayed_calls([__Block,__Tx,__TxList],[__Block]),true)).
?-(fllibinsrulesig(32,'rules.flr','_$_$_flora''descr_vars',FLORA_THIS_MODULE_NAME,18,FLORA_THIS_WORKSPACE(d^tblflapply)(all_valid_transactions,__List,'_$ctxt'(_CallerModuleVar,32,__newcontextvar1)),','(fllibsetof(__newdontcarevar3,[],[],','(FLORA_WORKSPACE(\\basetype,d^tblflapply)(valid_transaction,__newdontcarevar3,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,32)),fllibexecute_delayed_calls([__newdontcarevar3],[])),__newvar4),FLORA_WORKSPACE(\\basetype,d^meth)(__newvar4,flapply(collect,__List),'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar5,32))),null,'_$_$_flora''rule_enabled'(32,'rules.flr',FLORA_THIS_MODULE_NAME),null,true)).
?-(fllibinsrulesig(34,'rules.flr','_$_$_flora''descr_vars',FLORA_THIS_MODULE_NAME,19,FLORA_THIS_WORKSPACE(d^tblflapply)(all_invalid_transactions,__List,'_$ctxt'(_CallerModuleVar,34,__newcontextvar1)),','(fllibsetof(__newdontcarevar4,[],[],','(','(FLORA_WORKSPACE(\\basetype,d^isa)(__newdontcarevar4,transaction,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,34)),flibnafdelay(flora_naf(FLORA_THIS_WORKSPACE(tabled_naf_call)(','(FLORA_WORKSPACE(\\basetype,d^tblflapply)(valid_transaction,__newdontcarevar4,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar3,34)),fllibexecute_delayed_calls([__newdontcarevar4],[]))),[__newdontcarevar4],83,'rules.flr'))),fllibexecute_delayed_calls([__newdontcarevar4],[])),__newvar5),FLORA_WORKSPACE(\\basetype,d^meth)(__newvar5,flapply(collect,__List),'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar6,34))),null,'_$_$_flora''rule_enabled'(34,'rules.flr',FLORA_THIS_MODULE_NAME),null,true)).
?-(fllibinsrulesig(36,'rules.flr','_$_$_flora''descr_vars',FLORA_THIS_MODULE_NAME,20,FLORA_THIS_WORKSPACE(d^tblflapply)(network_health,__Total,__Valid,__Invalid,__HealthScore,'_$ctxt'(_CallerModuleVar,36,__newcontextvar1)),','(','(FLORA_THIS_WORKSPACE(d^tblflapply)(findall,__Tx,__Tx,__AllTx,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar3,36)),FLORA_THIS_WORKSPACE(d^isa)(__Tx,transaction,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,36))),','(length(__AllTx,__Total),','(FLORA_THIS_WORKSPACE(d^tblflapply)(findall,__Tx,flapply(valid_transaction,__Tx),__ValidTx,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar4,36)),','(length(__ValidTx,__Valid),','(fllibdelayedliteral('\\is','rules.flr',90,[__Invalid,-(__Total,__Valid)]),fllibdelayedliteral('\\is','rules.flr',91,[__HealthScore,/(*(__Valid,100),__Total)])))))),null,'_$_$_flora''rule_enabled'(36,'rules.flr',FLORA_THIS_MODULE_NAME),fllibexecute_delayed_calls([__AllTx,__HealthScore,__Invalid,__Total,__Tx,__Valid,__ValidTx],[__HealthScore,__Invalid,__Total,__Valid]),true)).
?-(fllibinsrulesig(38,'rules.flr','_$_$_flora''descr_vars',FLORA_THIS_MODULE_NAME,21,FLORA_THIS_WORKSPACE(d^tblflapply)(suspicious_transaction,__Tx,large_amount,'_$ctxt'(_CallerModuleVar,38,__newcontextvar1)),','(','(FLORA_THIS_WORKSPACE(d^mvd)(__Tx,amount,__Amount,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar3,38)),FLORA_THIS_WORKSPACE(d^isa)(__Tx,transaction,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,38))),fllibdelayedliteral(>,'rules.flr',95,[__Amount,500])),null,'_$_$_flora''rule_enabled'(38,'rules.flr',FLORA_THIS_MODULE_NAME),fllibexecute_delayed_calls([__Amount,__Tx],[__Tx]),true)).
?-(fllibinsrulesig(40,'rules.flr','_$_$_flora''descr_vars',FLORA_THIS_MODULE_NAME,22,FLORA_THIS_WORKSPACE(d^tblflapply)(suspicious_transaction,__Tx,round_number,'_$ctxt'(_CallerModuleVar,40,__newcontextvar1)),','(','(FLORA_THIS_WORKSPACE(d^mvd)(__Tx,amount,__Amount,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar3,40)),FLORA_THIS_WORKSPACE(d^isa)(__Tx,transaction,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,40))),','(fllibdelayedliteral(>,'rules.flr',99,[__Amount,0]),','(fllibdelayedliteral('\\is','rules.flr',100,[__Remainder,mod(__Amount,100)]),=(__Remainder,0)))),null,'_$_$_flora''rule_enabled'(40,'rules.flr',FLORA_THIS_MODULE_NAME),fllibexecute_delayed_calls([__Amount,__Remainder,__Tx],[__Tx]),true)).


%%%%%%%%%%%%%%%%%%%%%%%%% Signatures for latent queries %%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%




%%%%%%%%%%%%%%%%%%%%%%% Queries found in the source file %%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

?-(fllibprogramans(','('_$_$_flora''silent_equal'(_CallerModuleVar,FLORA_THIS_MODULE_NAME),','(FLORA_WORKSPACE(\\io,d^tblflapply)(write,'rules.flr loaded','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,__newcontextvar1)),FLORA_WORKSPACE(\\io,d^tblflapply)(nl,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar4,__newcontextvar3)))),[])).

 
#if !defined(FLORA_FLS2_FILENAME)
#if !defined(FLORA_LOADDYN_DATA)
#define FLORA_LOADDYN_DATA
#endif
#mode save
#mode nocomment "%"
#define FLORA_FLS2_FILENAME  'rules.fls2'
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

