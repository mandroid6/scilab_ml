pyImport jupyter_client
py = pyBuiltin()
jc = jupyter_client
km = jc.KernelManager()
km.start_kernel()

cmd = ("a =1")

c = km.client()
msg_id = c.execute(cmd)
state =''
msg = c.get_iopub_msg(timeout =1)
py.print('')
py.print(msg)


km.shutdown_kernel()
