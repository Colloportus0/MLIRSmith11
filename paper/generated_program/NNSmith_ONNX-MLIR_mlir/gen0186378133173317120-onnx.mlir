module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [2 , 1 , 1 , 1 , 1] , \22name\22 : \22v3_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22i1\22 , \22dims\22 : [2 , 2 , 1 , 1 , 1] , \22name\22 : \22v5_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [2 , 4 , 1 , 1] , \22name\22 : \22v0_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.func @omTensorListGetSize(!llvm.ptr<i8>) -> i64
  llvm.func @omTensorPrint(!llvm.ptr<i8>, !llvm.ptr<i8>)
  llvm.func @omTensorListGetOmtArray(!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
  llvm.func @omTensorSetDataType(!llvm.ptr<i8>, i64)
  llvm.func @omTensorGetDataType(!llvm.ptr<i8>) -> i64
  llvm.func @omTensorGetStrides(!llvm.ptr<i8>) -> !llvm.ptr<i64>
  llvm.func @omTensorGetShape(!llvm.ptr<i8>) -> !llvm.ptr<i64>
  llvm.func @omTensorGetRank(!llvm.ptr<i8>) -> i64
  llvm.func @omTensorSetDataPtr(!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>)
  llvm.func @omTensorGetDataPtr(!llvm.ptr<i8>) -> !llvm.ptr<i8>
  llvm.func @omTensorCreateUntyped(i64) -> !llvm.ptr<i8>
  llvm.func @omTensorListCreate(!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
  llvm.func @malloc(i64) -> !llvm.ptr<i8>
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: i64, %arg11: i64, %arg12: i64) -> !llvm.struct<(struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> attributes {input_names = ["v3_0"], llvm.emit_c_interface, output_names = ["v5_0", "v0_0"]} {
    %0 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>
    %1 = llvm.insertvalue %arg0, %0[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %2 = llvm.insertvalue %arg1, %1[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %3 = llvm.insertvalue %arg2, %2[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %4 = llvm.insertvalue %arg3, %3[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %5 = llvm.insertvalue %arg8, %4[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %6 = llvm.insertvalue %arg4, %5[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %7 = llvm.insertvalue %arg9, %6[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %8 = llvm.insertvalue %arg5, %7[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %9 = llvm.insertvalue %arg10, %8[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %10 = llvm.insertvalue %arg6, %9[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %11 = llvm.insertvalue %arg11, %10[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %12 = llvm.insertvalue %arg7, %11[3, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %13 = llvm.insertvalue %arg12, %12[4, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %14 = llvm.mlir.constant(0 : i32) : i32
    %15 = llvm.mlir.constant(0 : index) : i64
    %16 = llvm.mlir.constant(-2147483648 : i32) : i32
    %17 = llvm.mlir.constant(2 : index) : i64
    %18 = llvm.mlir.constant(1 : index) : i64
    %19 = llvm.mlir.constant(1 : index) : i64
    %20 = llvm.mlir.constant(1 : index) : i64
    %21 = llvm.mlir.constant(1 : index) : i64
    %22 = llvm.mlir.null : !llvm.ptr<i32>
    %23 = llvm.getelementptr %22[%17] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %24 = llvm.ptrtoint %23 : !llvm.ptr<i32> to i64
    %25 = llvm.mlir.constant(16 : index) : i64
    %26 = llvm.add %24, %25  : i64
    %27 = llvm.call @malloc(%26) : (i64) -> !llvm.ptr<i8>
    %28 = llvm.bitcast %27 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %29 = llvm.ptrtoint %28 : !llvm.ptr<i32> to i64
    %30 = llvm.mlir.constant(1 : index) : i64
    %31 = llvm.sub %25, %30  : i64
    %32 = llvm.add %29, %31  : i64
    %33 = llvm.urem %32, %25  : i64
    %34 = llvm.sub %32, %33  : i64
    %35 = llvm.inttoptr %34 : i64 to !llvm.ptr<i32>
    %36 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %37 = llvm.insertvalue %28, %36[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %38 = llvm.insertvalue %35, %37[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %39 = llvm.mlir.constant(0 : index) : i64
    %40 = llvm.insertvalue %39, %38[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %41 = llvm.insertvalue %17, %40[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %42 = llvm.insertvalue %18, %41[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %43 = llvm.insertvalue %19, %42[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %44 = llvm.insertvalue %20, %43[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %45 = llvm.insertvalue %18, %44[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %46 = llvm.insertvalue %19, %45[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %47 = llvm.insertvalue %20, %46[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %48 = llvm.insertvalue %21, %47[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %49 = llvm.mlir.constant(0 : index) : i64
    %50 = llvm.mlir.constant(2 : index) : i64
    %51 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%49 : i64)
  ^bb1(%52: i64):  // 2 preds: ^bb0, ^bb11
    %53 = llvm.icmp "slt" %52, %50 : i64
    llvm.cond_br %53, ^bb2, ^bb12
  ^bb2:  // pred: ^bb1
    %54 = llvm.mlir.constant(0 : index) : i64
    %55 = llvm.mlir.constant(1 : index) : i64
    %56 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb3(%54 : i64)
  ^bb3(%57: i64):  // 2 preds: ^bb2, ^bb10
    %58 = llvm.icmp "slt" %57, %55 : i64
    llvm.cond_br %58, ^bb4, ^bb11
  ^bb4:  // pred: ^bb3
    %59 = llvm.mlir.constant(0 : index) : i64
    %60 = llvm.mlir.constant(1 : index) : i64
    %61 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb5(%59 : i64)
  ^bb5(%62: i64):  // 2 preds: ^bb4, ^bb9
    %63 = llvm.icmp "slt" %62, %60 : i64
    llvm.cond_br %63, ^bb6, ^bb10
  ^bb6:  // pred: ^bb5
    %64 = llvm.mlir.constant(0 : index) : i64
    %65 = llvm.mlir.constant(1 : index) : i64
    %66 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb7(%64 : i64)
  ^bb7(%67: i64):  // 2 preds: ^bb6, ^bb8
    %68 = llvm.icmp "slt" %67, %65 : i64
    llvm.cond_br %68, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %69 = llvm.extractvalue %48[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %70 = llvm.add %52, %57  : i64
    %71 = llvm.add %70, %62  : i64
    %72 = llvm.add %71, %67  : i64
    %73 = llvm.getelementptr %69[%72] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %16, %73 : !llvm.ptr<i32>
    %74 = llvm.add %67, %66  : i64
    llvm.br ^bb7(%74 : i64)
  ^bb9:  // pred: ^bb7
    %75 = llvm.add %62, %61  : i64
    llvm.br ^bb5(%75 : i64)
  ^bb10:  // pred: ^bb5
    %76 = llvm.add %57, %56  : i64
    llvm.br ^bb3(%76 : i64)
  ^bb11:  // pred: ^bb3
    %77 = llvm.add %52, %51  : i64
    llvm.br ^bb1(%77 : i64)
  ^bb12:  // pred: ^bb1
    %78 = llvm.mlir.constant(0 : index) : i64
    %79 = llvm.mlir.constant(2 : index) : i64
    %80 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb13(%78 : i64)
  ^bb13(%81: i64):  // 2 preds: ^bb12, ^bb26
    %82 = llvm.icmp "slt" %81, %79 : i64
    llvm.cond_br %82, ^bb14, ^bb27
  ^bb14:  // pred: ^bb13
    %83 = llvm.mlir.constant(0 : index) : i64
    %84 = llvm.mlir.constant(1 : index) : i64
    %85 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb15(%83 : i64)
  ^bb15(%86: i64):  // 2 preds: ^bb14, ^bb25
    %87 = llvm.icmp "slt" %86, %84 : i64
    llvm.cond_br %87, ^bb16, ^bb26
  ^bb16:  // pred: ^bb15
    %88 = llvm.mlir.constant(0 : index) : i64
    %89 = llvm.mlir.constant(1 : index) : i64
    %90 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb17(%88 : i64)
  ^bb17(%91: i64):  // 2 preds: ^bb16, ^bb24
    %92 = llvm.icmp "slt" %91, %89 : i64
    llvm.cond_br %92, ^bb18, ^bb25
  ^bb18:  // pred: ^bb17
    %93 = llvm.mlir.constant(0 : index) : i64
    %94 = llvm.mlir.constant(1 : index) : i64
    %95 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb19(%93 : i64)
  ^bb19(%96: i64):  // 2 preds: ^bb18, ^bb23
    %97 = llvm.icmp "slt" %96, %94 : i64
    llvm.cond_br %97, ^bb20, ^bb24
  ^bb20:  // pred: ^bb19
    %98 = llvm.mlir.constant(0 : index) : i64
    %99 = llvm.mlir.constant(1 : index) : i64
    %100 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb21(%98 : i64)
  ^bb21(%101: i64):  // 2 preds: ^bb20, ^bb22
    %102 = llvm.icmp "slt" %101, %99 : i64
    llvm.cond_br %102, ^bb22, ^bb23
  ^bb22:  // pred: ^bb21
    %103 = llvm.extractvalue %13[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %104 = llvm.add %81, %86  : i64
    %105 = llvm.add %104, %91  : i64
    %106 = llvm.add %105, %96  : i64
    %107 = llvm.add %106, %101  : i64
    %108 = llvm.getelementptr %103[%107] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %109 = llvm.load %108 : !llvm.ptr<i32>
    %110 = llvm.extractvalue %48[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %111 = llvm.add %81, %86  : i64
    %112 = llvm.add %111, %96  : i64
    %113 = llvm.add %112, %101  : i64
    %114 = llvm.getelementptr %110[%113] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %115 = llvm.load %114 : !llvm.ptr<i32>
    %116 = llvm.icmp "sgt" %115, %109 : i32
    %117 = llvm.select %116, %115, %109 : i1, i32
    %118 = llvm.extractvalue %48[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %119 = llvm.add %81, %86  : i64
    %120 = llvm.add %119, %96  : i64
    %121 = llvm.add %120, %101  : i64
    %122 = llvm.getelementptr %118[%121] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %117, %122 : !llvm.ptr<i32>
    %123 = llvm.add %101, %100  : i64
    llvm.br ^bb21(%123 : i64)
  ^bb23:  // pred: ^bb21
    %124 = llvm.add %96, %95  : i64
    llvm.br ^bb19(%124 : i64)
  ^bb24:  // pred: ^bb19
    %125 = llvm.add %91, %90  : i64
    llvm.br ^bb17(%125 : i64)
  ^bb25:  // pred: ^bb17
    %126 = llvm.add %86, %85  : i64
    llvm.br ^bb15(%126 : i64)
  ^bb26:  // pred: ^bb15
    %127 = llvm.add %81, %80  : i64
    llvm.br ^bb13(%127 : i64)
  ^bb27:  // pred: ^bb13
    %128 = llvm.mlir.constant(2 : index) : i64
    %129 = llvm.mlir.constant(2 : index) : i64
    %130 = llvm.mlir.constant(1 : index) : i64
    %131 = llvm.mlir.constant(1 : index) : i64
    %132 = llvm.mlir.constant(1 : index) : i64
    %133 = llvm.mlir.constant(1 : index) : i64
    %134 = llvm.mlir.constant(4 : index) : i64
    %135 = llvm.mlir.null : !llvm.ptr<i1>
    %136 = llvm.getelementptr %135[%134] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %137 = llvm.ptrtoint %136 : !llvm.ptr<i1> to i64
    %138 = llvm.mlir.constant(16 : index) : i64
    %139 = llvm.add %137, %138  : i64
    %140 = llvm.call @malloc(%139) : (i64) -> !llvm.ptr<i8>
    %141 = llvm.bitcast %140 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %142 = llvm.ptrtoint %141 : !llvm.ptr<i1> to i64
    %143 = llvm.mlir.constant(1 : index) : i64
    %144 = llvm.sub %138, %143  : i64
    %145 = llvm.add %142, %144  : i64
    %146 = llvm.urem %145, %138  : i64
    %147 = llvm.sub %145, %146  : i64
    %148 = llvm.inttoptr %147 : i64 to !llvm.ptr<i1>
    %149 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)>
    %150 = llvm.insertvalue %141, %149[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)> 
    %151 = llvm.insertvalue %148, %150[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)> 
    %152 = llvm.mlir.constant(0 : index) : i64
    %153 = llvm.insertvalue %152, %151[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)> 
    %154 = llvm.insertvalue %128, %153[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)> 
    %155 = llvm.insertvalue %129, %154[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)> 
    %156 = llvm.insertvalue %130, %155[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)> 
    %157 = llvm.insertvalue %131, %156[3, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)> 
    %158 = llvm.insertvalue %132, %157[3, 4] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)> 
    %159 = llvm.insertvalue %129, %158[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)> 
    %160 = llvm.insertvalue %130, %159[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)> 
    %161 = llvm.insertvalue %131, %160[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)> 
    %162 = llvm.insertvalue %132, %161[4, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)> 
    %163 = llvm.insertvalue %133, %162[4, 4] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)> 
    %164 = llvm.mlir.constant(0 : index) : i64
    %165 = llvm.mlir.constant(2 : index) : i64
    %166 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb28(%164 : i64)
  ^bb28(%167: i64):  // 2 preds: ^bb27, ^bb41
    %168 = llvm.icmp "slt" %167, %165 : i64
    llvm.cond_br %168, ^bb29, ^bb42
  ^bb29:  // pred: ^bb28
    %169 = llvm.mlir.constant(0 : index) : i64
    %170 = llvm.mlir.constant(2 : index) : i64
    %171 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb30(%169 : i64)
  ^bb30(%172: i64):  // 2 preds: ^bb29, ^bb40
    %173 = llvm.icmp "slt" %172, %170 : i64
    llvm.cond_br %173, ^bb31, ^bb41
  ^bb31:  // pred: ^bb30
    %174 = llvm.mlir.constant(0 : index) : i64
    %175 = llvm.mlir.constant(1 : index) : i64
    %176 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb32(%174 : i64)
  ^bb32(%177: i64):  // 2 preds: ^bb31, ^bb39
    %178 = llvm.icmp "slt" %177, %175 : i64
    llvm.cond_br %178, ^bb33, ^bb40
  ^bb33:  // pred: ^bb32
    %179 = llvm.mlir.constant(0 : index) : i64
    %180 = llvm.mlir.constant(1 : index) : i64
    %181 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb34(%179 : i64)
  ^bb34(%182: i64):  // 2 preds: ^bb33, ^bb38
    %183 = llvm.icmp "slt" %182, %180 : i64
    llvm.cond_br %183, ^bb35, ^bb39
  ^bb35:  // pred: ^bb34
    %184 = llvm.mlir.constant(0 : index) : i64
    %185 = llvm.mlir.constant(1 : index) : i64
    %186 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb36(%184 : i64)
  ^bb36(%187: i64):  // 2 preds: ^bb35, ^bb37
    %188 = llvm.icmp "slt" %187, %185 : i64
    llvm.cond_br %188, ^bb37, ^bb38
  ^bb37:  // pred: ^bb36
    %189 = llvm.extractvalue %13[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %190 = llvm.add %167, %15  : i64
    %191 = llvm.add %190, %177  : i64
    %192 = llvm.add %191, %182  : i64
    %193 = llvm.add %192, %187  : i64
    %194 = llvm.getelementptr %189[%193] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %195 = llvm.load %194 : !llvm.ptr<i32>
    %196 = llvm.extractvalue %48[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %197 = llvm.add %172, %177  : i64
    %198 = llvm.add %197, %182  : i64
    %199 = llvm.add %198, %187  : i64
    %200 = llvm.getelementptr %196[%199] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %201 = llvm.load %200 : !llvm.ptr<i32>
    %202 = llvm.icmp "eq" %195, %201 : i32
    %203 = llvm.extractvalue %163[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)> 
    %204 = llvm.mlir.constant(2 : index) : i64
    %205 = llvm.mul %167, %204  : i64
    %206 = llvm.add %205, %172  : i64
    %207 = llvm.add %206, %177  : i64
    %208 = llvm.add %207, %182  : i64
    %209 = llvm.add %208, %187  : i64
    %210 = llvm.getelementptr %203[%209] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %202, %210 : !llvm.ptr<i1>
    %211 = llvm.add %187, %186  : i64
    llvm.br ^bb36(%211 : i64)
  ^bb38:  // pred: ^bb36
    %212 = llvm.add %182, %181  : i64
    llvm.br ^bb34(%212 : i64)
  ^bb39:  // pred: ^bb34
    %213 = llvm.add %177, %176  : i64
    llvm.br ^bb32(%213 : i64)
  ^bb40:  // pred: ^bb32
    %214 = llvm.add %172, %171  : i64
    llvm.br ^bb30(%214 : i64)
  ^bb41:  // pred: ^bb30
    %215 = llvm.add %167, %166  : i64
    llvm.br ^bb28(%215 : i64)
  ^bb42:  // pred: ^bb28
    %216 = llvm.mlir.constant(2 : index) : i64
    %217 = llvm.mlir.constant(1 : index) : i64
    %218 = llvm.mlir.constant(1 : index) : i64
    %219 = llvm.mlir.constant(4 : index) : i64
    %220 = llvm.mlir.constant(1 : index) : i64
    %221 = llvm.mlir.constant(4 : index) : i64
    %222 = llvm.mlir.constant(4 : index) : i64
    %223 = llvm.mlir.constant(8 : index) : i64
    %224 = llvm.mlir.null : !llvm.ptr<i32>
    %225 = llvm.getelementptr %224[%223] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %226 = llvm.ptrtoint %225 : !llvm.ptr<i32> to i64
    %227 = llvm.mlir.constant(16 : index) : i64
    %228 = llvm.add %226, %227  : i64
    %229 = llvm.call @malloc(%228) : (i64) -> !llvm.ptr<i8>
    %230 = llvm.bitcast %229 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %231 = llvm.ptrtoint %230 : !llvm.ptr<i32> to i64
    %232 = llvm.mlir.constant(1 : index) : i64
    %233 = llvm.sub %227, %232  : i64
    %234 = llvm.add %231, %233  : i64
    %235 = llvm.urem %234, %227  : i64
    %236 = llvm.sub %234, %235  : i64
    %237 = llvm.inttoptr %236 : i64 to !llvm.ptr<i32>
    %238 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %239 = llvm.insertvalue %230, %238[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %240 = llvm.insertvalue %237, %239[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %241 = llvm.mlir.constant(0 : index) : i64
    %242 = llvm.insertvalue %241, %240[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %243 = llvm.insertvalue %216, %242[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %244 = llvm.insertvalue %217, %243[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %245 = llvm.insertvalue %218, %244[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %246 = llvm.insertvalue %219, %245[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %247 = llvm.insertvalue %222, %246[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %248 = llvm.insertvalue %221, %247[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %249 = llvm.insertvalue %219, %248[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %250 = llvm.insertvalue %220, %249[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %251 = llvm.mlir.constant(0 : index) : i64
    %252 = llvm.mlir.constant(2 : index) : i64
    %253 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb43(%251 : i64)
  ^bb43(%254: i64):  // 2 preds: ^bb42, ^bb53
    %255 = llvm.icmp "slt" %254, %252 : i64
    llvm.cond_br %255, ^bb44, ^bb54
  ^bb44:  // pred: ^bb43
    %256 = llvm.mlir.constant(0 : index) : i64
    %257 = llvm.mlir.constant(1 : index) : i64
    %258 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb45(%256 : i64)
  ^bb45(%259: i64):  // 2 preds: ^bb44, ^bb52
    %260 = llvm.icmp "slt" %259, %257 : i64
    llvm.cond_br %260, ^bb46, ^bb53
  ^bb46:  // pred: ^bb45
    %261 = llvm.mlir.constant(0 : index) : i64
    %262 = llvm.mlir.constant(1 : index) : i64
    %263 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb47(%261 : i64)
  ^bb47(%264: i64):  // 2 preds: ^bb46, ^bb51
    %265 = llvm.icmp "slt" %264, %262 : i64
    llvm.cond_br %265, ^bb48, ^bb52
  ^bb48:  // pred: ^bb47
    %266 = llvm.mlir.constant(0 : index) : i64
    %267 = llvm.mlir.constant(1 : index) : i64
    %268 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb49(%266 : i64)
  ^bb49(%269: i64):  // 2 preds: ^bb48, ^bb50
    %270 = llvm.icmp "slt" %269, %267 : i64
    llvm.cond_br %270, ^bb50, ^bb51
  ^bb50:  // pred: ^bb49
    %271 = llvm.extractvalue %48[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %272 = llvm.add %254, %259  : i64
    %273 = llvm.add %272, %264  : i64
    %274 = llvm.add %273, %269  : i64
    %275 = llvm.getelementptr %271[%274] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %276 = llvm.load %275 : !llvm.ptr<i32>
    %277 = llvm.extractvalue %250[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %278 = llvm.mlir.constant(4 : index) : i64
    %279 = llvm.mul %254, %278  : i64
    %280 = llvm.mlir.constant(4 : index) : i64
    %281 = llvm.mul %259, %280  : i64
    %282 = llvm.add %279, %281  : i64
    %283 = llvm.mlir.constant(4 : index) : i64
    %284 = llvm.mul %264, %283  : i64
    %285 = llvm.add %282, %284  : i64
    %286 = llvm.add %285, %269  : i64
    %287 = llvm.getelementptr %277[%286] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %276, %287 : !llvm.ptr<i32>
    %288 = llvm.add %269, %268  : i64
    llvm.br ^bb49(%288 : i64)
  ^bb51:  // pred: ^bb49
    %289 = llvm.add %264, %263  : i64
    llvm.br ^bb47(%289 : i64)
  ^bb52:  // pred: ^bb47
    %290 = llvm.add %259, %258  : i64
    llvm.br ^bb45(%290 : i64)
  ^bb53:  // pred: ^bb45
    %291 = llvm.add %254, %253  : i64
    llvm.br ^bb43(%291 : i64)
  ^bb54:  // pred: ^bb43
    %292 = llvm.mlir.constant(0 : index) : i64
    %293 = llvm.mlir.constant(2 : index) : i64
    %294 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb55(%292 : i64)
  ^bb55(%295: i64):  // 2 preds: ^bb54, ^bb65
    %296 = llvm.icmp "slt" %295, %293 : i64
    llvm.cond_br %296, ^bb56, ^bb66
  ^bb56:  // pred: ^bb55
    %297 = llvm.mlir.constant(0 : index) : i64
    %298 = llvm.mlir.constant(1 : index) : i64
    %299 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb57(%297 : i64)
  ^bb57(%300: i64):  // 2 preds: ^bb56, ^bb64
    %301 = llvm.icmp "slt" %300, %298 : i64
    llvm.cond_br %301, ^bb58, ^bb65
  ^bb58:  // pred: ^bb57
    %302 = llvm.mlir.constant(0 : index) : i64
    %303 = llvm.mlir.constant(1 : index) : i64
    %304 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb59(%302 : i64)
  ^bb59(%305: i64):  // 2 preds: ^bb58, ^bb63
    %306 = llvm.icmp "slt" %305, %303 : i64
    llvm.cond_br %306, ^bb60, ^bb64
  ^bb60:  // pred: ^bb59
    %307 = llvm.mlir.constant(0 : index) : i64
    %308 = llvm.mlir.constant(1 : index) : i64
    %309 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb61(%307 : i64)
  ^bb61(%310: i64):  // 2 preds: ^bb60, ^bb62
    %311 = llvm.icmp "slt" %310, %308 : i64
    llvm.cond_br %311, ^bb62, ^bb63
  ^bb62:  // pred: ^bb61
    %312 = llvm.mlir.constant(1 : index) : i64
    %313 = llvm.add %310, %312  : i64
    %314 = llvm.extractvalue %48[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %315 = llvm.add %295, %300  : i64
    %316 = llvm.add %315, %305  : i64
    %317 = llvm.add %316, %310  : i64
    %318 = llvm.getelementptr %314[%317] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %319 = llvm.load %318 : !llvm.ptr<i32>
    %320 = llvm.extractvalue %250[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %321 = llvm.mlir.constant(4 : index) : i64
    %322 = llvm.mul %295, %321  : i64
    %323 = llvm.mlir.constant(4 : index) : i64
    %324 = llvm.mul %300, %323  : i64
    %325 = llvm.add %322, %324  : i64
    %326 = llvm.mlir.constant(4 : index) : i64
    %327 = llvm.mul %305, %326  : i64
    %328 = llvm.add %325, %327  : i64
    %329 = llvm.add %328, %313  : i64
    %330 = llvm.getelementptr %320[%329] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %319, %330 : !llvm.ptr<i32>
    %331 = llvm.add %310, %309  : i64
    llvm.br ^bb61(%331 : i64)
  ^bb63:  // pred: ^bb61
    %332 = llvm.add %305, %304  : i64
    llvm.br ^bb59(%332 : i64)
  ^bb64:  // pred: ^bb59
    %333 = llvm.add %300, %299  : i64
    llvm.br ^bb57(%333 : i64)
  ^bb65:  // pred: ^bb57
    %334 = llvm.add %295, %294  : i64
    llvm.br ^bb55(%334 : i64)
  ^bb66:  // pred: ^bb55
    %335 = llvm.mlir.constant(0 : index) : i64
    %336 = llvm.mlir.constant(2 : index) : i64
    %337 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb67(%335 : i64)
  ^bb67(%338: i64):  // 2 preds: ^bb66, ^bb77
    %339 = llvm.icmp "slt" %338, %336 : i64
    llvm.cond_br %339, ^bb68, ^bb78
  ^bb68:  // pred: ^bb67
    %340 = llvm.mlir.constant(0 : index) : i64
    %341 = llvm.mlir.constant(1 : index) : i64
    %342 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb69(%340 : i64)
  ^bb69(%343: i64):  // 2 preds: ^bb68, ^bb76
    %344 = llvm.icmp "slt" %343, %341 : i64
    llvm.cond_br %344, ^bb70, ^bb77
  ^bb70:  // pred: ^bb69
    %345 = llvm.mlir.constant(0 : index) : i64
    %346 = llvm.mlir.constant(1 : index) : i64
    %347 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb71(%345 : i64)
  ^bb71(%348: i64):  // 2 preds: ^bb70, ^bb75
    %349 = llvm.icmp "slt" %348, %346 : i64
    llvm.cond_br %349, ^bb72, ^bb76
  ^bb72:  // pred: ^bb71
    %350 = llvm.mlir.constant(0 : index) : i64
    %351 = llvm.mlir.constant(1 : index) : i64
    %352 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb73(%350 : i64)
  ^bb73(%353: i64):  // 2 preds: ^bb72, ^bb74
    %354 = llvm.icmp "slt" %353, %351 : i64
    llvm.cond_br %354, ^bb74, ^bb75
  ^bb74:  // pred: ^bb73
    %355 = llvm.mlir.constant(2 : index) : i64
    %356 = llvm.add %353, %355  : i64
    %357 = llvm.extractvalue %48[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %358 = llvm.add %338, %343  : i64
    %359 = llvm.add %358, %348  : i64
    %360 = llvm.add %359, %353  : i64
    %361 = llvm.getelementptr %357[%360] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %362 = llvm.load %361 : !llvm.ptr<i32>
    %363 = llvm.extractvalue %250[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %364 = llvm.mlir.constant(4 : index) : i64
    %365 = llvm.mul %338, %364  : i64
    %366 = llvm.mlir.constant(4 : index) : i64
    %367 = llvm.mul %343, %366  : i64
    %368 = llvm.add %365, %367  : i64
    %369 = llvm.mlir.constant(4 : index) : i64
    %370 = llvm.mul %348, %369  : i64
    %371 = llvm.add %368, %370  : i64
    %372 = llvm.add %371, %356  : i64
    %373 = llvm.getelementptr %363[%372] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %362, %373 : !llvm.ptr<i32>
    %374 = llvm.add %353, %352  : i64
    llvm.br ^bb73(%374 : i64)
  ^bb75:  // pred: ^bb73
    %375 = llvm.add %348, %347  : i64
    llvm.br ^bb71(%375 : i64)
  ^bb76:  // pred: ^bb71
    %376 = llvm.add %343, %342  : i64
    llvm.br ^bb69(%376 : i64)
  ^bb77:  // pred: ^bb69
    %377 = llvm.add %338, %337  : i64
    llvm.br ^bb67(%377 : i64)
  ^bb78:  // pred: ^bb67
    %378 = llvm.mlir.constant(0 : index) : i64
    %379 = llvm.mlir.constant(2 : index) : i64
    %380 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb79(%378 : i64)
  ^bb79(%381: i64):  // 2 preds: ^bb78, ^bb89
    %382 = llvm.icmp "slt" %381, %379 : i64
    llvm.cond_br %382, ^bb80, ^bb90
  ^bb80:  // pred: ^bb79
    %383 = llvm.mlir.constant(0 : index) : i64
    %384 = llvm.mlir.constant(1 : index) : i64
    %385 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb81(%383 : i64)
  ^bb81(%386: i64):  // 2 preds: ^bb80, ^bb88
    %387 = llvm.icmp "slt" %386, %384 : i64
    llvm.cond_br %387, ^bb82, ^bb89
  ^bb82:  // pred: ^bb81
    %388 = llvm.mlir.constant(0 : index) : i64
    %389 = llvm.mlir.constant(1 : index) : i64
    %390 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb83(%388 : i64)
  ^bb83(%391: i64):  // 2 preds: ^bb82, ^bb87
    %392 = llvm.icmp "slt" %391, %389 : i64
    llvm.cond_br %392, ^bb84, ^bb88
  ^bb84:  // pred: ^bb83
    %393 = llvm.mlir.constant(0 : index) : i64
    %394 = llvm.mlir.constant(1 : index) : i64
    %395 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb85(%393 : i64)
  ^bb85(%396: i64):  // 2 preds: ^bb84, ^bb86
    %397 = llvm.icmp "slt" %396, %394 : i64
    llvm.cond_br %397, ^bb86, ^bb87
  ^bb86:  // pred: ^bb85
    %398 = llvm.mlir.constant(3 : index) : i64
    %399 = llvm.add %396, %398  : i64
    %400 = llvm.extractvalue %48[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %401 = llvm.add %381, %386  : i64
    %402 = llvm.add %401, %391  : i64
    %403 = llvm.add %402, %396  : i64
    %404 = llvm.getelementptr %400[%403] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %405 = llvm.load %404 : !llvm.ptr<i32>
    %406 = llvm.extractvalue %250[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %407 = llvm.mlir.constant(4 : index) : i64
    %408 = llvm.mul %381, %407  : i64
    %409 = llvm.mlir.constant(4 : index) : i64
    %410 = llvm.mul %386, %409  : i64
    %411 = llvm.add %408, %410  : i64
    %412 = llvm.mlir.constant(4 : index) : i64
    %413 = llvm.mul %391, %412  : i64
    %414 = llvm.add %411, %413  : i64
    %415 = llvm.add %414, %399  : i64
    %416 = llvm.getelementptr %406[%415] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %405, %416 : !llvm.ptr<i32>
    %417 = llvm.add %396, %395  : i64
    llvm.br ^bb85(%417 : i64)
  ^bb87:  // pred: ^bb85
    %418 = llvm.add %391, %390  : i64
    llvm.br ^bb83(%418 : i64)
  ^bb88:  // pred: ^bb83
    %419 = llvm.add %386, %385  : i64
    llvm.br ^bb81(%419 : i64)
  ^bb89:  // pred: ^bb81
    %420 = llvm.add %381, %380  : i64
    llvm.br ^bb79(%420 : i64)
  ^bb90:  // pred: ^bb79
    %421 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %422 = llvm.extractvalue %250[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %423 = llvm.extractvalue %250[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %424 = llvm.insertvalue %422, %421[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %425 = llvm.insertvalue %423, %424[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %426 = llvm.mlir.constant(0 : index) : i64
    %427 = llvm.insertvalue %426, %425[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %428 = llvm.mlir.constant(2 : index) : i64
    %429 = llvm.insertvalue %428, %427[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %430 = llvm.mlir.constant(4 : index) : i64
    %431 = llvm.insertvalue %430, %429[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %432 = llvm.mlir.constant(4 : index) : i64
    %433 = llvm.insertvalue %432, %431[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %434 = llvm.mlir.constant(1 : index) : i64
    %435 = llvm.insertvalue %434, %433[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %436 = llvm.mlir.constant(1 : index) : i64
    %437 = llvm.insertvalue %436, %435[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %438 = llvm.mlir.constant(1 : index) : i64
    %439 = llvm.insertvalue %438, %437[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %440 = llvm.mlir.constant(1 : index) : i64
    %441 = llvm.insertvalue %440, %439[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %442 = llvm.mlir.constant(1 : index) : i64
    %443 = llvm.insertvalue %442, %441[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %444 = llvm.mlir.constant(2 : index) : i64
    %445 = llvm.mlir.constant(4 : index) : i64
    %446 = llvm.mlir.constant(1 : index) : i64
    %447 = llvm.mlir.constant(1 : index) : i64
    %448 = llvm.mlir.constant(1 : index) : i64
    %449 = llvm.mlir.constant(8 : index) : i64
    %450 = llvm.mlir.null : !llvm.ptr<i32>
    %451 = llvm.getelementptr %450[%449] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %452 = llvm.ptrtoint %451 : !llvm.ptr<i32> to i64
    %453 = llvm.mlir.constant(16 : index) : i64
    %454 = llvm.add %452, %453  : i64
    %455 = llvm.call @malloc(%454) : (i64) -> !llvm.ptr<i8>
    %456 = llvm.bitcast %455 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %457 = llvm.ptrtoint %456 : !llvm.ptr<i32> to i64
    %458 = llvm.mlir.constant(1 : index) : i64
    %459 = llvm.sub %453, %458  : i64
    %460 = llvm.add %457, %459  : i64
    %461 = llvm.urem %460, %453  : i64
    %462 = llvm.sub %460, %461  : i64
    %463 = llvm.inttoptr %462 : i64 to !llvm.ptr<i32>
    %464 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %465 = llvm.insertvalue %456, %464[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %466 = llvm.insertvalue %463, %465[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %467 = llvm.mlir.constant(0 : index) : i64
    %468 = llvm.insertvalue %467, %466[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %469 = llvm.insertvalue %444, %468[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %470 = llvm.insertvalue %445, %469[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %471 = llvm.insertvalue %446, %470[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %472 = llvm.insertvalue %447, %471[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %473 = llvm.insertvalue %445, %472[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %474 = llvm.insertvalue %446, %473[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %475 = llvm.insertvalue %447, %474[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %476 = llvm.insertvalue %448, %475[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %477 = llvm.mlir.constant(0 : index) : i64
    %478 = llvm.mlir.constant(2 : index) : i64
    %479 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb91(%477 : i64)
  ^bb91(%480: i64):  // 2 preds: ^bb90, ^bb101
    %481 = llvm.icmp "slt" %480, %478 : i64
    llvm.cond_br %481, ^bb92, ^bb102
  ^bb92:  // pred: ^bb91
    %482 = llvm.mlir.constant(0 : index) : i64
    %483 = llvm.mlir.constant(4 : index) : i64
    %484 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb93(%482 : i64)
  ^bb93(%485: i64):  // 2 preds: ^bb92, ^bb100
    %486 = llvm.icmp "slt" %485, %483 : i64
    llvm.cond_br %486, ^bb94, ^bb101
  ^bb94:  // pred: ^bb93
    %487 = llvm.mlir.constant(0 : index) : i64
    %488 = llvm.mlir.constant(1 : index) : i64
    %489 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb95(%487 : i64)
  ^bb95(%490: i64):  // 2 preds: ^bb94, ^bb99
    %491 = llvm.icmp "slt" %490, %488 : i64
    llvm.cond_br %491, ^bb96, ^bb100
  ^bb96:  // pred: ^bb95
    %492 = llvm.mlir.constant(0 : index) : i64
    %493 = llvm.mlir.constant(1 : index) : i64
    %494 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb97(%492 : i64)
  ^bb97(%495: i64):  // 2 preds: ^bb96, ^bb98
    %496 = llvm.icmp "slt" %495, %493 : i64
    llvm.cond_br %496, ^bb98, ^bb99
  ^bb98:  // pred: ^bb97
    %497 = llvm.extractvalue %443[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %498 = llvm.mlir.constant(4 : index) : i64
    %499 = llvm.mul %480, %498  : i64
    %500 = llvm.add %499, %485  : i64
    %501 = llvm.add %500, %490  : i64
    %502 = llvm.add %501, %495  : i64
    %503 = llvm.getelementptr %497[%502] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %504 = llvm.load %503 : !llvm.ptr<i32>
    %505 = llvm.sub %14, %504  : i32
    %506 = llvm.extractvalue %476[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %507 = llvm.mlir.constant(4 : index) : i64
    %508 = llvm.mul %480, %507  : i64
    %509 = llvm.add %508, %485  : i64
    %510 = llvm.add %509, %490  : i64
    %511 = llvm.add %510, %495  : i64
    %512 = llvm.getelementptr %506[%511] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %505, %512 : !llvm.ptr<i32>
    %513 = llvm.add %495, %494  : i64
    llvm.br ^bb97(%513 : i64)
  ^bb99:  // pred: ^bb97
    %514 = llvm.add %490, %489  : i64
    llvm.br ^bb95(%514 : i64)
  ^bb100:  // pred: ^bb95
    %515 = llvm.add %485, %484  : i64
    llvm.br ^bb93(%515 : i64)
  ^bb101:  // pred: ^bb93
    %516 = llvm.add %480, %479  : i64
    llvm.br ^bb91(%516 : i64)
  ^bb102:  // pred: ^bb91
    %517 = llvm.mlir.undef : !llvm.struct<(struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
    %518 = llvm.insertvalue %163, %517[0] : !llvm.struct<(struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %519 = llvm.insertvalue %476, %518[1] : !llvm.struct<(struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    llvm.return %519 : !llvm.struct<(struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>>) attributes {input_names = ["v3_0"], llvm.emit_c_interface, output_names = ["v5_0", "v0_0"]} {
    %0 = llvm.load %arg1 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>>
    %1 = llvm.extractvalue %0[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %2 = llvm.extractvalue %0[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %3 = llvm.extractvalue %0[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %4 = llvm.extractvalue %0[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %5 = llvm.extractvalue %0[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %6 = llvm.extractvalue %0[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %7 = llvm.extractvalue %0[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %8 = llvm.extractvalue %0[3, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %9 = llvm.extractvalue %0[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %10 = llvm.extractvalue %0[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %11 = llvm.extractvalue %0[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %12 = llvm.extractvalue %0[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %13 = llvm.extractvalue %0[4, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %14 = llvm.call @main_graph(%1, %2, %3, %4, %5, %6, %7, %8, %9, %10, %11, %12, %13) : (!llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> !llvm.struct<(struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
    llvm.store %14, %arg0 : !llvm.ptr<struct<(struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
    llvm.return
  }
  llvm.func @run_main_graph(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.call @omTensorListGetOmtArray(%arg0) : (!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.alloca %1 x !llvm.struct<(struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> : (i64) -> !llvm.ptr<struct<(struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
    %3 = llvm.mlir.constant(0 : i64) : i64
    %4 = llvm.getelementptr %0[%3] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    %5 = llvm.load %4 : !llvm.ptr<ptr<i8>>
    %6 = llvm.alloca %1 x !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> : (i64) -> !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>>
    %7 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>
    %8 = llvm.call @omTensorGetDataPtr(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i8>
    %9 = llvm.bitcast %8 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %10 = llvm.insertvalue %9, %7[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %11 = llvm.insertvalue %9, %10[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %12 = llvm.mlir.constant(0 : i64) : i64
    %13 = llvm.insertvalue %12, %11[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %14 = llvm.call @omTensorGetShape(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %15 = llvm.call @omTensorGetStrides(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %16 = llvm.mlir.constant(0 : i64) : i64
    %17 = llvm.getelementptr %14[%16] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %18 = llvm.load %17 : !llvm.ptr<i64>
    %19 = llvm.insertvalue %18, %13[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %20 = llvm.getelementptr %15[%16] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %21 = llvm.load %20 : !llvm.ptr<i64>
    %22 = llvm.insertvalue %21, %19[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %23 = llvm.mlir.constant(1 : i64) : i64
    %24 = llvm.getelementptr %14[%23] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %25 = llvm.load %24 : !llvm.ptr<i64>
    %26 = llvm.insertvalue %25, %22[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %27 = llvm.getelementptr %15[%23] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %28 = llvm.load %27 : !llvm.ptr<i64>
    %29 = llvm.insertvalue %28, %26[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %30 = llvm.mlir.constant(2 : i64) : i64
    %31 = llvm.getelementptr %14[%30] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %32 = llvm.load %31 : !llvm.ptr<i64>
    %33 = llvm.insertvalue %32, %29[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %34 = llvm.getelementptr %15[%30] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %35 = llvm.load %34 : !llvm.ptr<i64>
    %36 = llvm.insertvalue %35, %33[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %37 = llvm.mlir.constant(3 : i64) : i64
    %38 = llvm.getelementptr %14[%37] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %39 = llvm.load %38 : !llvm.ptr<i64>
    %40 = llvm.insertvalue %39, %36[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %41 = llvm.getelementptr %15[%37] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %42 = llvm.load %41 : !llvm.ptr<i64>
    %43 = llvm.insertvalue %42, %40[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %44 = llvm.mlir.constant(4 : i64) : i64
    %45 = llvm.getelementptr %14[%44] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %46 = llvm.load %45 : !llvm.ptr<i64>
    %47 = llvm.insertvalue %46, %43[3, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %48 = llvm.getelementptr %15[%44] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %49 = llvm.load %48 : !llvm.ptr<i64>
    %50 = llvm.insertvalue %49, %47[4, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    llvm.store %50, %6 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>>
    llvm.call @_mlir_ciface_main_graph(%2, %6) : (!llvm.ptr<struct<(struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>>) -> ()
    %51 = llvm.load %2 : !llvm.ptr<struct<(struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
    %52 = llvm.extractvalue %51[0] : !llvm.struct<(struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %53 = llvm.extractvalue %51[1] : !llvm.struct<(struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %54 = llvm.mlir.constant(2 : i64) : i64
    %55 = llvm.mlir.constant(16 : i64) : i64
    %56 = llvm.call @malloc(%55) : (i64) -> !llvm.ptr<i8>
    %57 = llvm.bitcast %56 : !llvm.ptr<i8> to !llvm.ptr<ptr<i8>>
    %58 = llvm.mlir.constant(5 : i64) : i64
    %59 = llvm.call @omTensorCreateUntyped(%58) : (i64) -> !llvm.ptr<i8>
    %60 = llvm.mlir.constant(1 : i64) : i64
    %61 = llvm.extractvalue %52[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)> 
    %62 = llvm.bitcast %61 : !llvm.ptr<i1> to !llvm.ptr<i8>
    %63 = llvm.extractvalue %52[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)> 
    %64 = llvm.bitcast %63 : !llvm.ptr<i1> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%59, %60, %62, %64) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %65 = llvm.mlir.constant(9 : i64) : i64
    llvm.call @omTensorSetDataType(%59, %65) : (!llvm.ptr<i8>, i64) -> ()
    %66 = llvm.call @omTensorGetShape(%59) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %67 = llvm.call @omTensorGetStrides(%59) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %68 = llvm.mlir.constant(0 : i64) : i64
    %69 = llvm.extractvalue %52[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)> 
    %70 = llvm.getelementptr %66[%68] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %69, %70 : !llvm.ptr<i64>
    %71 = llvm.extractvalue %52[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)> 
    %72 = llvm.getelementptr %67[%68] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %71, %72 : !llvm.ptr<i64>
    %73 = llvm.mlir.constant(1 : i64) : i64
    %74 = llvm.extractvalue %52[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)> 
    %75 = llvm.getelementptr %66[%73] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %74, %75 : !llvm.ptr<i64>
    %76 = llvm.extractvalue %52[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)> 
    %77 = llvm.getelementptr %67[%73] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %76, %77 : !llvm.ptr<i64>
    %78 = llvm.mlir.constant(2 : i64) : i64
    %79 = llvm.extractvalue %52[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)> 
    %80 = llvm.getelementptr %66[%78] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %79, %80 : !llvm.ptr<i64>
    %81 = llvm.extractvalue %52[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)> 
    %82 = llvm.getelementptr %67[%78] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %81, %82 : !llvm.ptr<i64>
    %83 = llvm.mlir.constant(3 : i64) : i64
    %84 = llvm.extractvalue %52[3, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)> 
    %85 = llvm.getelementptr %66[%83] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %84, %85 : !llvm.ptr<i64>
    %86 = llvm.extractvalue %52[4, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)> 
    %87 = llvm.getelementptr %67[%83] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %86, %87 : !llvm.ptr<i64>
    %88 = llvm.mlir.constant(4 : i64) : i64
    %89 = llvm.extractvalue %52[3, 4] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)> 
    %90 = llvm.getelementptr %66[%88] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %89, %90 : !llvm.ptr<i64>
    %91 = llvm.extractvalue %52[4, 4] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)> 
    %92 = llvm.getelementptr %67[%88] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %91, %92 : !llvm.ptr<i64>
    %93 = llvm.mlir.constant(0 : i64) : i64
    %94 = llvm.getelementptr %57[%93] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %59, %94 : !llvm.ptr<ptr<i8>>
    %95 = llvm.mlir.constant(4 : i64) : i64
    %96 = llvm.call @omTensorCreateUntyped(%95) : (i64) -> !llvm.ptr<i8>
    %97 = llvm.mlir.constant(1 : i64) : i64
    %98 = llvm.extractvalue %53[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %99 = llvm.bitcast %98 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %100 = llvm.extractvalue %53[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %101 = llvm.bitcast %100 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%96, %97, %99, %101) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %102 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%96, %102) : (!llvm.ptr<i8>, i64) -> ()
    %103 = llvm.call @omTensorGetShape(%96) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %104 = llvm.call @omTensorGetStrides(%96) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %105 = llvm.mlir.constant(0 : i64) : i64
    %106 = llvm.extractvalue %53[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %107 = llvm.getelementptr %103[%105] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %106, %107 : !llvm.ptr<i64>
    %108 = llvm.extractvalue %53[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %109 = llvm.getelementptr %104[%105] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %108, %109 : !llvm.ptr<i64>
    %110 = llvm.mlir.constant(1 : i64) : i64
    %111 = llvm.extractvalue %53[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %112 = llvm.getelementptr %103[%110] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %111, %112 : !llvm.ptr<i64>
    %113 = llvm.extractvalue %53[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %114 = llvm.getelementptr %104[%110] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %113, %114 : !llvm.ptr<i64>
    %115 = llvm.mlir.constant(2 : i64) : i64
    %116 = llvm.extractvalue %53[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %117 = llvm.getelementptr %103[%115] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %116, %117 : !llvm.ptr<i64>
    %118 = llvm.extractvalue %53[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %119 = llvm.getelementptr %104[%115] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %118, %119 : !llvm.ptr<i64>
    %120 = llvm.mlir.constant(3 : i64) : i64
    %121 = llvm.extractvalue %53[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %122 = llvm.getelementptr %103[%120] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %121, %122 : !llvm.ptr<i64>
    %123 = llvm.extractvalue %53[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %124 = llvm.getelementptr %104[%120] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %123, %124 : !llvm.ptr<i64>
    %125 = llvm.mlir.constant(1 : i64) : i64
    %126 = llvm.getelementptr %57[%125] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %96, %126 : !llvm.ptr<ptr<i8>>
    %127 = llvm.call @omTensorListCreate(%57, %54, %1) : (!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
    llvm.return %127 : !llvm.ptr<i8>
  }
  llvm.mlir.global internal constant @_entry_point_arrays() {addr_space = 0 : i32} : !llvm.array<2 x ptr<i8>> {
    %0 = llvm.mlir.undef : !llvm.array<2 x ptr<i8>>
    %1 = llvm.mlir.addressof @_entry_point_0 : !llvm.ptr<array<15 x i8>>
    %2 = llvm.mlir.constant(0 : i64) : i64
    %3 = llvm.getelementptr %1[%2, %2] : (!llvm.ptr<array<15 x i8>>, i64, i64) -> !llvm.ptr<i8>
    %4 = llvm.insertvalue %3, %0[0] : !llvm.array<2 x ptr<i8>> 
    %5 = llvm.mlir.null : !llvm.ptr<i8>
    %6 = llvm.insertvalue %5, %4[1] : !llvm.array<2 x ptr<i8>> 
    llvm.return %6 : !llvm.array<2 x ptr<i8>>
  }
  llvm.func @omQueryEntryPoints(%arg0: !llvm.ptr<i64>) -> !llvm.ptr<ptr<i8>> {
    %0 = llvm.mlir.null : !llvm.ptr<i64>
    %1 = llvm.icmp "ne" %arg0, %0 : !llvm.ptr<i64>
    llvm.cond_br %1, ^bb1, ^bb2
  ^bb1:  // pred: ^bb0
    %2 = llvm.mlir.constant(0 : i64) : i64
    %3 = llvm.getelementptr %arg0[%2] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %4 = llvm.mlir.constant(1 : i64) : i64
    llvm.store %4, %3 : !llvm.ptr<i64>
    llvm.br ^bb2
  ^bb2:  // 2 preds: ^bb0, ^bb1
    %5 = llvm.mlir.addressof @_entry_point_arrays : !llvm.ptr<array<2 x ptr<i8>>>
    %6 = llvm.bitcast %5 : !llvm.ptr<array<2 x ptr<i8>>> to !llvm.ptr<ptr<i8>>
    llvm.return %6 : !llvm.ptr<ptr<i8>>
  }
  llvm.func @omInputSignature(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.mlir.constant(0 : i32) : i32
    %1 = llvm.mlir.addressof @_entry_point_0 : !llvm.ptr<array<15 x i8>>
    %2 = llvm.mlir.constant(0 : i64) : i64
    %3 = llvm.getelementptr %1[%2, %2] : (!llvm.ptr<array<15 x i8>>, i64, i64) -> !llvm.ptr<i8>
    %4 = llvm.mlir.constant(15 : i64) : i64
    %5 = llvm.call @strncmp(%arg0, %3, %4) : (!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
    %6 = llvm.icmp "eq" %5, %0 : i32
    llvm.cond_br %6, ^bb1, ^bb2
  ^bb1:  // pred: ^bb0
    %7 = llvm.mlir.addressof @_entry_point_0_in_sig : !llvm.ptr<array<76 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<76 x i8>> to !llvm.ptr<i8>
    llvm.return %8 : !llvm.ptr<i8>
  ^bb2:  // pred: ^bb0
    %9 = llvm.mlir.null : !llvm.ptr<i8>
    llvm.return %9 : !llvm.ptr<i8>
  }
  llvm.func @omOutputSignature(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.mlir.constant(0 : i32) : i32
    %1 = llvm.mlir.addressof @_entry_point_0 : !llvm.ptr<array<15 x i8>>
    %2 = llvm.mlir.constant(0 : i64) : i64
    %3 = llvm.getelementptr %1[%2, %2] : (!llvm.ptr<array<15 x i8>>, i64, i64) -> !llvm.ptr<i8>
    %4 = llvm.mlir.constant(15 : i64) : i64
    %5 = llvm.call @strncmp(%arg0, %3, %4) : (!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
    %6 = llvm.icmp "eq" %5, %0 : i32
    llvm.cond_br %6, ^bb1, ^bb2
  ^bb1:  // pred: ^bb0
    %7 = llvm.mlir.addressof @_entry_point_0_out_sig : !llvm.ptr<array<144 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<144 x i8>> to !llvm.ptr<i8>
    llvm.return %8 : !llvm.ptr<i8>
  ^bb2:  // pred: ^bb0
    %9 = llvm.mlir.null : !llvm.ptr<i8>
    llvm.return %9 : !llvm.ptr<i8>
  }
}

