class ratbox::default::privset {
  ratbox::privset { 'local_op':
    order => '01',
    privs => [
      'oper:local_kill',
      'oper:operwall',
    ],
  }
  ratbox::privset { 'server_bot':
    order   => '02',
    extends => 'local_op',
    privs   => [
      'oper:kline',
      'oper:remoteban',
      'snomask:nick_changes',
    ],
  }
  ratbox::privset { 'global_op':
    order   => '03',
    extends => 'local_op',
    privs   => [
      'oper:global_kill',
      'oper:routing',
      'oper:kline',
      'oper:unkline',
      'oper:xline',
      'oper:resv',
      'oper:mass_notice',
      'oper:remoteban',
    ],
  }
  ratbox::privset { 'admin':
    order   => '04',
    extends => 'global_op',
    privs   => [
      'oper:admin',
      'oper:die',
      'oper:rehash',
      'oper:spy',
    ],
  }
}
