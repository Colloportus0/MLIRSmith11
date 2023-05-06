module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [] , \22name\22 : \22v1_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22i1\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v6_0\22 }\0A ,    { \22type\22 : \22i1\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v4_0\22 }\0A ,    { \22type\22 : \22i1\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v5_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
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
  llvm.mlir.global internal constant @constant_0(dense<7> : tensor<1x1x1x1xi32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x array<1 x array<1 x array<1 x i32>>>>
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64) -> !llvm.struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)> attributes {input_names = ["v1_0"], llvm.emit_c_interface, output_names = ["v6_0", "v4_0", "v5_0"]} {
    %0 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64)>
    %1 = llvm.insertvalue %arg0, %0[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %2 = llvm.insertvalue %arg1, %1[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %3 = llvm.insertvalue %arg2, %2[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %4 = llvm.mlir.addressof @constant_0 : !llvm.ptr<array<1 x array<1 x array<1 x array<1 x i32>>>>>
    %5 = llvm.bitcast %4 : !llvm.ptr<array<1 x array<1 x array<1 x array<1 x i32>>>>> to !llvm.ptr<i32>
    %6 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %7 = llvm.insertvalue %5, %6[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %8 = llvm.insertvalue %5, %7[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %9 = llvm.mlir.constant(0 : index) : i64
    %10 = llvm.insertvalue %9, %8[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %11 = llvm.mlir.constant(1 : index) : i64
    %12 = llvm.insertvalue %11, %10[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %13 = llvm.mlir.constant(1 : index) : i64
    %14 = llvm.insertvalue %13, %12[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %15 = llvm.mlir.constant(1 : index) : i64
    %16 = llvm.insertvalue %15, %14[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %17 = llvm.mlir.constant(1 : index) : i64
    %18 = llvm.insertvalue %17, %16[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %19 = llvm.mlir.constant(1 : index) : i64
    %20 = llvm.insertvalue %19, %18[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %21 = llvm.mlir.constant(1 : index) : i64
    %22 = llvm.insertvalue %21, %20[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %23 = llvm.mlir.constant(1 : index) : i64
    %24 = llvm.insertvalue %23, %22[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %25 = llvm.mlir.constant(1 : index) : i64
    %26 = llvm.insertvalue %25, %24[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %27 = llvm.mlir.constant(1 : index) : i64
    %28 = llvm.mlir.constant(1 : index) : i64
    %29 = llvm.mlir.constant(1 : index) : i64
    %30 = llvm.mlir.constant(1 : index) : i64
    %31 = llvm.mlir.constant(1 : index) : i64
    %32 = llvm.mlir.null : !llvm.ptr<i1>
    %33 = llvm.getelementptr %32[%27] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %34 = llvm.ptrtoint %33 : !llvm.ptr<i1> to i64
    %35 = llvm.mlir.constant(16 : index) : i64
    %36 = llvm.add %34, %35  : i64
    %37 = llvm.call @malloc(%36) : (i64) -> !llvm.ptr<i8>
    %38 = llvm.bitcast %37 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %39 = llvm.ptrtoint %38 : !llvm.ptr<i1> to i64
    %40 = llvm.mlir.constant(1 : index) : i64
    %41 = llvm.sub %35, %40  : i64
    %42 = llvm.add %39, %41  : i64
    %43 = llvm.urem %42, %35  : i64
    %44 = llvm.sub %42, %43  : i64
    %45 = llvm.inttoptr %44 : i64 to !llvm.ptr<i1>
    %46 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>
    %47 = llvm.insertvalue %38, %46[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %48 = llvm.insertvalue %45, %47[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %49 = llvm.mlir.constant(0 : index) : i64
    %50 = llvm.insertvalue %49, %48[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %51 = llvm.insertvalue %27, %50[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %52 = llvm.insertvalue %28, %51[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %53 = llvm.insertvalue %29, %52[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %54 = llvm.insertvalue %30, %53[3, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %55 = llvm.insertvalue %28, %54[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %56 = llvm.insertvalue %29, %55[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %57 = llvm.insertvalue %30, %56[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %58 = llvm.insertvalue %31, %57[4, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %59 = llvm.mlir.constant(0 : index) : i64
    %60 = llvm.mlir.constant(1 : index) : i64
    %61 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%59 : i64)
  ^bb1(%62: i64):  // 2 preds: ^bb0, ^bb11
    %63 = llvm.icmp "slt" %62, %60 : i64
    llvm.cond_br %63, ^bb2, ^bb12
  ^bb2:  // pred: ^bb1
    %64 = llvm.mlir.constant(0 : index) : i64
    %65 = llvm.mlir.constant(1 : index) : i64
    %66 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb3(%64 : i64)
  ^bb3(%67: i64):  // 2 preds: ^bb2, ^bb10
    %68 = llvm.icmp "slt" %67, %65 : i64
    llvm.cond_br %68, ^bb4, ^bb11
  ^bb4:  // pred: ^bb3
    %69 = llvm.mlir.constant(0 : index) : i64
    %70 = llvm.mlir.constant(1 : index) : i64
    %71 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb5(%69 : i64)
  ^bb5(%72: i64):  // 2 preds: ^bb4, ^bb9
    %73 = llvm.icmp "slt" %72, %70 : i64
    llvm.cond_br %73, ^bb6, ^bb10
  ^bb6:  // pred: ^bb5
    %74 = llvm.mlir.constant(0 : index) : i64
    %75 = llvm.mlir.constant(1 : index) : i64
    %76 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb7(%74 : i64)
  ^bb7(%77: i64):  // 2 preds: ^bb6, ^bb8
    %78 = llvm.icmp "slt" %77, %75 : i64
    llvm.cond_br %78, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %79 = llvm.extractvalue %3[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %80 = llvm.load %79 : !llvm.ptr<i32>
    %81 = llvm.extractvalue %26[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %82 = llvm.add %62, %67  : i64
    %83 = llvm.add %82, %72  : i64
    %84 = llvm.add %83, %77  : i64
    %85 = llvm.getelementptr %81[%84] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %86 = llvm.load %85 : !llvm.ptr<i32>
    %87 = llvm.icmp "slt" %80, %86 : i32
    %88 = llvm.extractvalue %58[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %89 = llvm.add %62, %67  : i64
    %90 = llvm.add %89, %72  : i64
    %91 = llvm.add %90, %77  : i64
    %92 = llvm.getelementptr %88[%91] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %87, %92 : !llvm.ptr<i1>
    %93 = llvm.add %77, %76  : i64
    llvm.br ^bb7(%93 : i64)
  ^bb9:  // pred: ^bb7
    %94 = llvm.add %72, %71  : i64
    llvm.br ^bb5(%94 : i64)
  ^bb10:  // pred: ^bb5
    %95 = llvm.add %67, %66  : i64
    llvm.br ^bb3(%95 : i64)
  ^bb11:  // pred: ^bb3
    %96 = llvm.add %62, %61  : i64
    llvm.br ^bb1(%96 : i64)
  ^bb12:  // pred: ^bb1
    %97 = llvm.mlir.constant(1 : index) : i64
    %98 = llvm.mlir.constant(1 : index) : i64
    %99 = llvm.mlir.constant(1 : index) : i64
    %100 = llvm.mlir.constant(1 : index) : i64
    %101 = llvm.mlir.constant(1 : index) : i64
    %102 = llvm.mlir.null : !llvm.ptr<i1>
    %103 = llvm.getelementptr %102[%97] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %104 = llvm.ptrtoint %103 : !llvm.ptr<i1> to i64
    %105 = llvm.mlir.constant(16 : index) : i64
    %106 = llvm.add %104, %105  : i64
    %107 = llvm.call @malloc(%106) : (i64) -> !llvm.ptr<i8>
    %108 = llvm.bitcast %107 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %109 = llvm.ptrtoint %108 : !llvm.ptr<i1> to i64
    %110 = llvm.mlir.constant(1 : index) : i64
    %111 = llvm.sub %105, %110  : i64
    %112 = llvm.add %109, %111  : i64
    %113 = llvm.urem %112, %105  : i64
    %114 = llvm.sub %112, %113  : i64
    %115 = llvm.inttoptr %114 : i64 to !llvm.ptr<i1>
    %116 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>
    %117 = llvm.insertvalue %108, %116[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %118 = llvm.insertvalue %115, %117[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %119 = llvm.mlir.constant(0 : index) : i64
    %120 = llvm.insertvalue %119, %118[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %121 = llvm.insertvalue %97, %120[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %122 = llvm.insertvalue %98, %121[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %123 = llvm.insertvalue %99, %122[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %124 = llvm.insertvalue %100, %123[3, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %125 = llvm.insertvalue %98, %124[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %126 = llvm.insertvalue %99, %125[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %127 = llvm.insertvalue %100, %126[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %128 = llvm.insertvalue %101, %127[4, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %129 = llvm.mlir.constant(0 : index) : i64
    %130 = llvm.mlir.constant(1 : index) : i64
    %131 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb13(%129 : i64)
  ^bb13(%132: i64):  // 2 preds: ^bb12, ^bb23
    %133 = llvm.icmp "slt" %132, %130 : i64
    llvm.cond_br %133, ^bb14, ^bb24
  ^bb14:  // pred: ^bb13
    %134 = llvm.mlir.constant(0 : index) : i64
    %135 = llvm.mlir.constant(1 : index) : i64
    %136 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb15(%134 : i64)
  ^bb15(%137: i64):  // 2 preds: ^bb14, ^bb22
    %138 = llvm.icmp "slt" %137, %135 : i64
    llvm.cond_br %138, ^bb16, ^bb23
  ^bb16:  // pred: ^bb15
    %139 = llvm.mlir.constant(0 : index) : i64
    %140 = llvm.mlir.constant(1 : index) : i64
    %141 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb17(%139 : i64)
  ^bb17(%142: i64):  // 2 preds: ^bb16, ^bb21
    %143 = llvm.icmp "slt" %142, %140 : i64
    llvm.cond_br %143, ^bb18, ^bb22
  ^bb18:  // pred: ^bb17
    %144 = llvm.mlir.constant(0 : index) : i64
    %145 = llvm.mlir.constant(1 : index) : i64
    %146 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb19(%144 : i64)
  ^bb19(%147: i64):  // 2 preds: ^bb18, ^bb20
    %148 = llvm.icmp "slt" %147, %145 : i64
    llvm.cond_br %148, ^bb20, ^bb21
  ^bb20:  // pred: ^bb19
    %149 = llvm.extractvalue %26[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %150 = llvm.add %132, %137  : i64
    %151 = llvm.add %150, %142  : i64
    %152 = llvm.add %151, %147  : i64
    %153 = llvm.getelementptr %149[%152] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %154 = llvm.load %153 : !llvm.ptr<i32>
    %155 = llvm.extractvalue %3[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %156 = llvm.load %155 : !llvm.ptr<i32>
    %157 = llvm.icmp "sgt" %154, %156 : i32
    %158 = llvm.extractvalue %128[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %159 = llvm.add %132, %137  : i64
    %160 = llvm.add %159, %142  : i64
    %161 = llvm.add %160, %147  : i64
    %162 = llvm.getelementptr %158[%161] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %157, %162 : !llvm.ptr<i1>
    %163 = llvm.add %147, %146  : i64
    llvm.br ^bb19(%163 : i64)
  ^bb21:  // pred: ^bb19
    %164 = llvm.add %142, %141  : i64
    llvm.br ^bb17(%164 : i64)
  ^bb22:  // pred: ^bb17
    %165 = llvm.add %137, %136  : i64
    llvm.br ^bb15(%165 : i64)
  ^bb23:  // pred: ^bb15
    %166 = llvm.add %132, %131  : i64
    llvm.br ^bb13(%166 : i64)
  ^bb24:  // pred: ^bb13
    %167 = llvm.mlir.constant(1 : index) : i64
    %168 = llvm.mlir.constant(1 : index) : i64
    %169 = llvm.mlir.constant(1 : index) : i64
    %170 = llvm.mlir.constant(1 : index) : i64
    %171 = llvm.mlir.constant(1 : index) : i64
    %172 = llvm.mlir.null : !llvm.ptr<i1>
    %173 = llvm.getelementptr %172[%167] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %174 = llvm.ptrtoint %173 : !llvm.ptr<i1> to i64
    %175 = llvm.mlir.constant(16 : index) : i64
    %176 = llvm.add %174, %175  : i64
    %177 = llvm.call @malloc(%176) : (i64) -> !llvm.ptr<i8>
    %178 = llvm.bitcast %177 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %179 = llvm.ptrtoint %178 : !llvm.ptr<i1> to i64
    %180 = llvm.mlir.constant(1 : index) : i64
    %181 = llvm.sub %175, %180  : i64
    %182 = llvm.add %179, %181  : i64
    %183 = llvm.urem %182, %175  : i64
    %184 = llvm.sub %182, %183  : i64
    %185 = llvm.inttoptr %184 : i64 to !llvm.ptr<i1>
    %186 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>
    %187 = llvm.insertvalue %178, %186[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %188 = llvm.insertvalue %185, %187[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %189 = llvm.mlir.constant(0 : index) : i64
    %190 = llvm.insertvalue %189, %188[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %191 = llvm.insertvalue %167, %190[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %192 = llvm.insertvalue %168, %191[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %193 = llvm.insertvalue %169, %192[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %194 = llvm.insertvalue %170, %193[3, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %195 = llvm.insertvalue %168, %194[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %196 = llvm.insertvalue %169, %195[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %197 = llvm.insertvalue %170, %196[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %198 = llvm.insertvalue %171, %197[4, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %199 = llvm.mlir.constant(0 : index) : i64
    %200 = llvm.mlir.constant(1 : index) : i64
    %201 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb25(%199 : i64)
  ^bb25(%202: i64):  // 2 preds: ^bb24, ^bb35
    %203 = llvm.icmp "slt" %202, %200 : i64
    llvm.cond_br %203, ^bb26, ^bb36
  ^bb26:  // pred: ^bb25
    %204 = llvm.mlir.constant(0 : index) : i64
    %205 = llvm.mlir.constant(1 : index) : i64
    %206 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb27(%204 : i64)
  ^bb27(%207: i64):  // 2 preds: ^bb26, ^bb34
    %208 = llvm.icmp "slt" %207, %205 : i64
    llvm.cond_br %208, ^bb28, ^bb35
  ^bb28:  // pred: ^bb27
    %209 = llvm.mlir.constant(0 : index) : i64
    %210 = llvm.mlir.constant(1 : index) : i64
    %211 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb29(%209 : i64)
  ^bb29(%212: i64):  // 2 preds: ^bb28, ^bb33
    %213 = llvm.icmp "slt" %212, %210 : i64
    llvm.cond_br %213, ^bb30, ^bb34
  ^bb30:  // pred: ^bb29
    %214 = llvm.mlir.constant(0 : index) : i64
    %215 = llvm.mlir.constant(1 : index) : i64
    %216 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb31(%214 : i64)
  ^bb31(%217: i64):  // 2 preds: ^bb30, ^bb32
    %218 = llvm.icmp "slt" %217, %215 : i64
    llvm.cond_br %218, ^bb32, ^bb33
  ^bb32:  // pred: ^bb31
    %219 = llvm.extractvalue %128[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %220 = llvm.add %202, %207  : i64
    %221 = llvm.add %220, %212  : i64
    %222 = llvm.add %221, %217  : i64
    %223 = llvm.getelementptr %219[%222] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %224 = llvm.load %223 : !llvm.ptr<i1>
    %225 = llvm.extractvalue %128[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %226 = llvm.add %202, %207  : i64
    %227 = llvm.add %226, %212  : i64
    %228 = llvm.add %227, %217  : i64
    %229 = llvm.getelementptr %225[%228] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %230 = llvm.load %229 : !llvm.ptr<i1>
    %231 = llvm.xor %224, %230  : i1
    %232 = llvm.extractvalue %198[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %233 = llvm.add %202, %207  : i64
    %234 = llvm.add %233, %212  : i64
    %235 = llvm.add %234, %217  : i64
    %236 = llvm.getelementptr %232[%235] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %231, %236 : !llvm.ptr<i1>
    %237 = llvm.add %217, %216  : i64
    llvm.br ^bb31(%237 : i64)
  ^bb33:  // pred: ^bb31
    %238 = llvm.add %212, %211  : i64
    llvm.br ^bb29(%238 : i64)
  ^bb34:  // pred: ^bb29
    %239 = llvm.add %207, %206  : i64
    llvm.br ^bb27(%239 : i64)
  ^bb35:  // pred: ^bb27
    %240 = llvm.add %202, %201  : i64
    llvm.br ^bb25(%240 : i64)
  ^bb36:  // pred: ^bb25
    %241 = llvm.mlir.constant(1 : index) : i64
    %242 = llvm.mlir.constant(1 : index) : i64
    %243 = llvm.mlir.constant(1 : index) : i64
    %244 = llvm.mlir.constant(1 : index) : i64
    %245 = llvm.mlir.constant(1 : index) : i64
    %246 = llvm.mlir.null : !llvm.ptr<i32>
    %247 = llvm.getelementptr %246[%241] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %248 = llvm.ptrtoint %247 : !llvm.ptr<i32> to i64
    %249 = llvm.mlir.constant(16 : index) : i64
    %250 = llvm.add %248, %249  : i64
    %251 = llvm.call @malloc(%250) : (i64) -> !llvm.ptr<i8>
    %252 = llvm.bitcast %251 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %253 = llvm.ptrtoint %252 : !llvm.ptr<i32> to i64
    %254 = llvm.mlir.constant(1 : index) : i64
    %255 = llvm.sub %249, %254  : i64
    %256 = llvm.add %253, %255  : i64
    %257 = llvm.urem %256, %249  : i64
    %258 = llvm.sub %256, %257  : i64
    %259 = llvm.inttoptr %258 : i64 to !llvm.ptr<i32>
    %260 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %261 = llvm.insertvalue %252, %260[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %262 = llvm.insertvalue %259, %261[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %263 = llvm.mlir.constant(0 : index) : i64
    %264 = llvm.insertvalue %263, %262[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %265 = llvm.insertvalue %241, %264[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %266 = llvm.insertvalue %242, %265[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %267 = llvm.insertvalue %243, %266[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %268 = llvm.insertvalue %244, %267[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %269 = llvm.insertvalue %242, %268[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %270 = llvm.insertvalue %243, %269[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %271 = llvm.insertvalue %244, %270[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %272 = llvm.insertvalue %245, %271[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %273 = llvm.mlir.constant(0 : index) : i64
    %274 = llvm.mlir.constant(1 : index) : i64
    %275 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb37(%273 : i64)
  ^bb37(%276: i64):  // 2 preds: ^bb36, ^bb47
    %277 = llvm.icmp "slt" %276, %274 : i64
    llvm.cond_br %277, ^bb38, ^bb48
  ^bb38:  // pred: ^bb37
    %278 = llvm.mlir.constant(0 : index) : i64
    %279 = llvm.mlir.constant(1 : index) : i64
    %280 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb39(%278 : i64)
  ^bb39(%281: i64):  // 2 preds: ^bb38, ^bb46
    %282 = llvm.icmp "slt" %281, %279 : i64
    llvm.cond_br %282, ^bb40, ^bb47
  ^bb40:  // pred: ^bb39
    %283 = llvm.mlir.constant(0 : index) : i64
    %284 = llvm.mlir.constant(1 : index) : i64
    %285 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb41(%283 : i64)
  ^bb41(%286: i64):  // 2 preds: ^bb40, ^bb45
    %287 = llvm.icmp "slt" %286, %284 : i64
    llvm.cond_br %287, ^bb42, ^bb46
  ^bb42:  // pred: ^bb41
    %288 = llvm.mlir.constant(0 : index) : i64
    %289 = llvm.mlir.constant(1 : index) : i64
    %290 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb43(%288 : i64)
  ^bb43(%291: i64):  // 2 preds: ^bb42, ^bb44
    %292 = llvm.icmp "slt" %291, %289 : i64
    llvm.cond_br %292, ^bb44, ^bb45
  ^bb44:  // pred: ^bb43
    %293 = llvm.extractvalue %3[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %294 = llvm.load %293 : !llvm.ptr<i32>
    %295 = llvm.extractvalue %26[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %296 = llvm.add %276, %281  : i64
    %297 = llvm.add %296, %286  : i64
    %298 = llvm.add %297, %291  : i64
    %299 = llvm.getelementptr %295[%298] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %300 = llvm.load %299 : !llvm.ptr<i32>
    %301 = llvm.mul %294, %300  : i32
    %302 = llvm.extractvalue %272[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %303 = llvm.add %276, %281  : i64
    %304 = llvm.add %303, %286  : i64
    %305 = llvm.add %304, %291  : i64
    %306 = llvm.getelementptr %302[%305] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %301, %306 : !llvm.ptr<i32>
    %307 = llvm.add %291, %290  : i64
    llvm.br ^bb43(%307 : i64)
  ^bb45:  // pred: ^bb43
    %308 = llvm.add %286, %285  : i64
    llvm.br ^bb41(%308 : i64)
  ^bb46:  // pred: ^bb41
    %309 = llvm.add %281, %280  : i64
    llvm.br ^bb39(%309 : i64)
  ^bb47:  // pred: ^bb39
    %310 = llvm.add %276, %275  : i64
    llvm.br ^bb37(%310 : i64)
  ^bb48:  // pred: ^bb37
    %311 = llvm.mlir.constant(1 : index) : i64
    %312 = llvm.mlir.constant(1 : index) : i64
    %313 = llvm.mlir.constant(1 : index) : i64
    %314 = llvm.mlir.constant(1 : index) : i64
    %315 = llvm.mlir.constant(1 : index) : i64
    %316 = llvm.mlir.null : !llvm.ptr<i1>
    %317 = llvm.getelementptr %316[%311] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %318 = llvm.ptrtoint %317 : !llvm.ptr<i1> to i64
    %319 = llvm.mlir.constant(16 : index) : i64
    %320 = llvm.add %318, %319  : i64
    %321 = llvm.call @malloc(%320) : (i64) -> !llvm.ptr<i8>
    %322 = llvm.bitcast %321 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %323 = llvm.ptrtoint %322 : !llvm.ptr<i1> to i64
    %324 = llvm.mlir.constant(1 : index) : i64
    %325 = llvm.sub %319, %324  : i64
    %326 = llvm.add %323, %325  : i64
    %327 = llvm.urem %326, %319  : i64
    %328 = llvm.sub %326, %327  : i64
    %329 = llvm.inttoptr %328 : i64 to !llvm.ptr<i1>
    %330 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>
    %331 = llvm.insertvalue %322, %330[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %332 = llvm.insertvalue %329, %331[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %333 = llvm.mlir.constant(0 : index) : i64
    %334 = llvm.insertvalue %333, %332[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %335 = llvm.insertvalue %311, %334[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %336 = llvm.insertvalue %312, %335[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %337 = llvm.insertvalue %313, %336[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %338 = llvm.insertvalue %314, %337[3, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %339 = llvm.insertvalue %312, %338[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %340 = llvm.insertvalue %313, %339[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %341 = llvm.insertvalue %314, %340[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %342 = llvm.insertvalue %315, %341[4, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %343 = llvm.mlir.constant(0 : index) : i64
    %344 = llvm.mlir.constant(1 : index) : i64
    %345 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb49(%343 : i64)
  ^bb49(%346: i64):  // 2 preds: ^bb48, ^bb59
    %347 = llvm.icmp "slt" %346, %344 : i64
    llvm.cond_br %347, ^bb50, ^bb60
  ^bb50:  // pred: ^bb49
    %348 = llvm.mlir.constant(0 : index) : i64
    %349 = llvm.mlir.constant(1 : index) : i64
    %350 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb51(%348 : i64)
  ^bb51(%351: i64):  // 2 preds: ^bb50, ^bb58
    %352 = llvm.icmp "slt" %351, %349 : i64
    llvm.cond_br %352, ^bb52, ^bb59
  ^bb52:  // pred: ^bb51
    %353 = llvm.mlir.constant(0 : index) : i64
    %354 = llvm.mlir.constant(1 : index) : i64
    %355 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb53(%353 : i64)
  ^bb53(%356: i64):  // 2 preds: ^bb52, ^bb57
    %357 = llvm.icmp "slt" %356, %354 : i64
    llvm.cond_br %357, ^bb54, ^bb58
  ^bb54:  // pred: ^bb53
    %358 = llvm.mlir.constant(0 : index) : i64
    %359 = llvm.mlir.constant(1 : index) : i64
    %360 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb55(%358 : i64)
  ^bb55(%361: i64):  // 2 preds: ^bb54, ^bb56
    %362 = llvm.icmp "slt" %361, %359 : i64
    llvm.cond_br %362, ^bb56, ^bb57
  ^bb56:  // pred: ^bb55
    %363 = llvm.extractvalue %3[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %364 = llvm.load %363 : !llvm.ptr<i32>
    %365 = llvm.extractvalue %272[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %366 = llvm.add %346, %351  : i64
    %367 = llvm.add %366, %356  : i64
    %368 = llvm.add %367, %361  : i64
    %369 = llvm.getelementptr %365[%368] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %370 = llvm.load %369 : !llvm.ptr<i32>
    %371 = llvm.icmp "slt" %364, %370 : i32
    %372 = llvm.extractvalue %342[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %373 = llvm.add %346, %351  : i64
    %374 = llvm.add %373, %356  : i64
    %375 = llvm.add %374, %361  : i64
    %376 = llvm.getelementptr %372[%375] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %371, %376 : !llvm.ptr<i1>
    %377 = llvm.add %361, %360  : i64
    llvm.br ^bb55(%377 : i64)
  ^bb57:  // pred: ^bb55
    %378 = llvm.add %356, %355  : i64
    llvm.br ^bb53(%378 : i64)
  ^bb58:  // pred: ^bb53
    %379 = llvm.add %351, %350  : i64
    llvm.br ^bb51(%379 : i64)
  ^bb59:  // pred: ^bb51
    %380 = llvm.add %346, %345  : i64
    llvm.br ^bb49(%380 : i64)
  ^bb60:  // pred: ^bb49
    %381 = llvm.mlir.undef : !llvm.struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>
    %382 = llvm.insertvalue %58, %381[0] : !llvm.struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %383 = llvm.insertvalue %198, %382[1] : !llvm.struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %384 = llvm.insertvalue %342, %383[2] : !llvm.struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)> 
    llvm.return %384 : !llvm.struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64)>>) attributes {input_names = ["v1_0"], llvm.emit_c_interface, output_names = ["v6_0", "v4_0", "v5_0"]} {
    %0 = llvm.load %arg1 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64)>>
    %1 = llvm.extractvalue %0[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %2 = llvm.extractvalue %0[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %3 = llvm.extractvalue %0[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %4 = llvm.call @main_graph(%1, %2, %3) : (!llvm.ptr<i32>, !llvm.ptr<i32>, i64) -> !llvm.struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>
    llvm.store %4, %arg0 : !llvm.ptr<struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>>
    llvm.return
  }
  llvm.func @run_main_graph(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.call @omTensorListGetOmtArray(%arg0) : (!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.alloca %1 x !llvm.struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)> : (i64) -> !llvm.ptr<struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>>
    %3 = llvm.mlir.constant(0 : i64) : i64
    %4 = llvm.getelementptr %0[%3] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    %5 = llvm.load %4 : !llvm.ptr<ptr<i8>>
    %6 = llvm.alloca %1 x !llvm.struct<(ptr<i32>, ptr<i32>, i64)> : (i64) -> !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64)>>
    %7 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64)>
    %8 = llvm.call @omTensorGetDataPtr(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i8>
    %9 = llvm.bitcast %8 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %10 = llvm.insertvalue %9, %7[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %11 = llvm.insertvalue %9, %10[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %12 = llvm.mlir.constant(0 : i64) : i64
    %13 = llvm.insertvalue %12, %11[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %14 = llvm.call @omTensorGetShape(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %15 = llvm.call @omTensorGetStrides(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    llvm.store %13, %6 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64)>>
    llvm.call @_mlir_ciface_main_graph(%2, %6) : (!llvm.ptr<struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64)>>) -> ()
    %16 = llvm.load %2 : !llvm.ptr<struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>>
    %17 = llvm.extractvalue %16[0] : !llvm.struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %18 = llvm.extractvalue %16[1] : !llvm.struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %19 = llvm.extractvalue %16[2] : !llvm.struct<(struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %20 = llvm.mlir.constant(3 : i64) : i64
    %21 = llvm.mlir.constant(24 : i64) : i64
    %22 = llvm.call @malloc(%21) : (i64) -> !llvm.ptr<i8>
    %23 = llvm.bitcast %22 : !llvm.ptr<i8> to !llvm.ptr<ptr<i8>>
    %24 = llvm.mlir.constant(4 : i64) : i64
    %25 = llvm.call @omTensorCreateUntyped(%24) : (i64) -> !llvm.ptr<i8>
    %26 = llvm.mlir.constant(1 : i64) : i64
    %27 = llvm.extractvalue %17[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %28 = llvm.bitcast %27 : !llvm.ptr<i1> to !llvm.ptr<i8>
    %29 = llvm.extractvalue %17[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %30 = llvm.bitcast %29 : !llvm.ptr<i1> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%25, %26, %28, %30) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %31 = llvm.mlir.constant(9 : i64) : i64
    llvm.call @omTensorSetDataType(%25, %31) : (!llvm.ptr<i8>, i64) -> ()
    %32 = llvm.call @omTensorGetShape(%25) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %33 = llvm.call @omTensorGetStrides(%25) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %34 = llvm.mlir.constant(0 : i64) : i64
    %35 = llvm.extractvalue %17[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %36 = llvm.getelementptr %32[%34] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %35, %36 : !llvm.ptr<i64>
    %37 = llvm.extractvalue %17[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %38 = llvm.getelementptr %33[%34] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %37, %38 : !llvm.ptr<i64>
    %39 = llvm.mlir.constant(1 : i64) : i64
    %40 = llvm.extractvalue %17[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %41 = llvm.getelementptr %32[%39] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %40, %41 : !llvm.ptr<i64>
    %42 = llvm.extractvalue %17[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %43 = llvm.getelementptr %33[%39] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %42, %43 : !llvm.ptr<i64>
    %44 = llvm.mlir.constant(2 : i64) : i64
    %45 = llvm.extractvalue %17[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %46 = llvm.getelementptr %32[%44] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %45, %46 : !llvm.ptr<i64>
    %47 = llvm.extractvalue %17[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %48 = llvm.getelementptr %33[%44] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %47, %48 : !llvm.ptr<i64>
    %49 = llvm.mlir.constant(3 : i64) : i64
    %50 = llvm.extractvalue %17[3, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %51 = llvm.getelementptr %32[%49] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %50, %51 : !llvm.ptr<i64>
    %52 = llvm.extractvalue %17[4, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %53 = llvm.getelementptr %33[%49] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %52, %53 : !llvm.ptr<i64>
    %54 = llvm.mlir.constant(0 : i64) : i64
    %55 = llvm.getelementptr %23[%54] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %25, %55 : !llvm.ptr<ptr<i8>>
    %56 = llvm.mlir.constant(4 : i64) : i64
    %57 = llvm.call @omTensorCreateUntyped(%56) : (i64) -> !llvm.ptr<i8>
    %58 = llvm.mlir.constant(1 : i64) : i64
    %59 = llvm.extractvalue %18[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %60 = llvm.bitcast %59 : !llvm.ptr<i1> to !llvm.ptr<i8>
    %61 = llvm.extractvalue %18[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %62 = llvm.bitcast %61 : !llvm.ptr<i1> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%57, %58, %60, %62) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %63 = llvm.mlir.constant(9 : i64) : i64
    llvm.call @omTensorSetDataType(%57, %63) : (!llvm.ptr<i8>, i64) -> ()
    %64 = llvm.call @omTensorGetShape(%57) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %65 = llvm.call @omTensorGetStrides(%57) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %66 = llvm.mlir.constant(0 : i64) : i64
    %67 = llvm.extractvalue %18[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %68 = llvm.getelementptr %64[%66] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %67, %68 : !llvm.ptr<i64>
    %69 = llvm.extractvalue %18[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %70 = llvm.getelementptr %65[%66] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %69, %70 : !llvm.ptr<i64>
    %71 = llvm.mlir.constant(1 : i64) : i64
    %72 = llvm.extractvalue %18[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %73 = llvm.getelementptr %64[%71] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %72, %73 : !llvm.ptr<i64>
    %74 = llvm.extractvalue %18[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %75 = llvm.getelementptr %65[%71] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %74, %75 : !llvm.ptr<i64>
    %76 = llvm.mlir.constant(2 : i64) : i64
    %77 = llvm.extractvalue %18[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %78 = llvm.getelementptr %64[%76] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %77, %78 : !llvm.ptr<i64>
    %79 = llvm.extractvalue %18[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %80 = llvm.getelementptr %65[%76] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %79, %80 : !llvm.ptr<i64>
    %81 = llvm.mlir.constant(3 : i64) : i64
    %82 = llvm.extractvalue %18[3, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %83 = llvm.getelementptr %64[%81] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %82, %83 : !llvm.ptr<i64>
    %84 = llvm.extractvalue %18[4, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %85 = llvm.getelementptr %65[%81] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %84, %85 : !llvm.ptr<i64>
    %86 = llvm.mlir.constant(1 : i64) : i64
    %87 = llvm.getelementptr %23[%86] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %57, %87 : !llvm.ptr<ptr<i8>>
    %88 = llvm.mlir.constant(4 : i64) : i64
    %89 = llvm.call @omTensorCreateUntyped(%88) : (i64) -> !llvm.ptr<i8>
    %90 = llvm.mlir.constant(1 : i64) : i64
    %91 = llvm.extractvalue %19[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %92 = llvm.bitcast %91 : !llvm.ptr<i1> to !llvm.ptr<i8>
    %93 = llvm.extractvalue %19[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %94 = llvm.bitcast %93 : !llvm.ptr<i1> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%89, %90, %92, %94) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %95 = llvm.mlir.constant(9 : i64) : i64
    llvm.call @omTensorSetDataType(%89, %95) : (!llvm.ptr<i8>, i64) -> ()
    %96 = llvm.call @omTensorGetShape(%89) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %97 = llvm.call @omTensorGetStrides(%89) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %98 = llvm.mlir.constant(0 : i64) : i64
    %99 = llvm.extractvalue %19[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %100 = llvm.getelementptr %96[%98] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %99, %100 : !llvm.ptr<i64>
    %101 = llvm.extractvalue %19[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %102 = llvm.getelementptr %97[%98] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %101, %102 : !llvm.ptr<i64>
    %103 = llvm.mlir.constant(1 : i64) : i64
    %104 = llvm.extractvalue %19[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %105 = llvm.getelementptr %96[%103] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %104, %105 : !llvm.ptr<i64>
    %106 = llvm.extractvalue %19[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %107 = llvm.getelementptr %97[%103] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %106, %107 : !llvm.ptr<i64>
    %108 = llvm.mlir.constant(2 : i64) : i64
    %109 = llvm.extractvalue %19[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %110 = llvm.getelementptr %96[%108] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %109, %110 : !llvm.ptr<i64>
    %111 = llvm.extractvalue %19[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %112 = llvm.getelementptr %97[%108] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %111, %112 : !llvm.ptr<i64>
    %113 = llvm.mlir.constant(3 : i64) : i64
    %114 = llvm.extractvalue %19[3, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %115 = llvm.getelementptr %96[%113] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %114, %115 : !llvm.ptr<i64>
    %116 = llvm.extractvalue %19[4, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %117 = llvm.getelementptr %97[%113] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %116, %117 : !llvm.ptr<i64>
    %118 = llvm.mlir.constant(2 : i64) : i64
    %119 = llvm.getelementptr %23[%118] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %89, %119 : !llvm.ptr<ptr<i8>>
    %120 = llvm.call @omTensorListCreate(%23, %20, %1) : (!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
    llvm.return %120 : !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_in_sig : !llvm.ptr<array<59 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<59 x i8>> to !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_out_sig : !llvm.ptr<array<208 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<208 x i8>> to !llvm.ptr<i8>
    llvm.return %8 : !llvm.ptr<i8>
  ^bb2:  // pred: ^bb0
    %9 = llvm.mlir.null : !llvm.ptr<i8>
    llvm.return %9 : !llvm.ptr<i8>
  }
}

