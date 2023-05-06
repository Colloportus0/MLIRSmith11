module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i1\22 , \22dims\22 : [] , \22name\22 : \22v0_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [2 , 2 , 2 , 1] , \22name\22 : \22v4_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22i1\22 , \22dims\22 : [2 , 2 , 2 , 1] , \22name\22 : \22v3_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
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
  llvm.mlir.global internal constant @constant_1(dense<5> : tensor<1xi32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x i32>
  llvm.mlir.global internal constant @constant_0(dense<true> : tensor<i1>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x i1>
  llvm.func @main_graph(%arg0: !llvm.ptr<i1>, %arg1: !llvm.ptr<i1>, %arg2: i64, %arg3: !llvm.ptr<i32>, %arg4: !llvm.ptr<i32>, %arg5: i64, %arg6: i64, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: i64, %arg11: i64, %arg12: i64, %arg13: i64) -> !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> attributes {input_names = ["v0_0", "v4_0"], llvm.emit_c_interface, output_names = ["v3_0"]} {
    %0 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64)>
    %1 = llvm.insertvalue %arg0, %0[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64)> 
    %2 = llvm.insertvalue %arg1, %1[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64)> 
    %3 = llvm.insertvalue %arg2, %2[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64)> 
    %4 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %5 = llvm.insertvalue %arg3, %4[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %6 = llvm.insertvalue %arg4, %5[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %7 = llvm.insertvalue %arg5, %6[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %8 = llvm.insertvalue %arg6, %7[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %9 = llvm.insertvalue %arg10, %8[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %10 = llvm.insertvalue %arg7, %9[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %11 = llvm.insertvalue %arg11, %10[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %12 = llvm.insertvalue %arg8, %11[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %13 = llvm.insertvalue %arg12, %12[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %14 = llvm.insertvalue %arg9, %13[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %15 = llvm.insertvalue %arg13, %14[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %16 = llvm.mlir.constant(0 : i32) : i32
    %17 = llvm.mlir.addressof @constant_0 : !llvm.ptr<array<1 x i1>>
    %18 = llvm.bitcast %17 : !llvm.ptr<array<1 x i1>> to !llvm.ptr<i1>
    %19 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64)>
    %20 = llvm.insertvalue %18, %19[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64)> 
    %21 = llvm.insertvalue %18, %20[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64)> 
    %22 = llvm.mlir.constant(0 : index) : i64
    %23 = llvm.insertvalue %22, %21[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64)> 
    %24 = llvm.mlir.addressof @constant_1 : !llvm.ptr<array<1 x i32>>
    %25 = llvm.bitcast %24 : !llvm.ptr<array<1 x i32>> to !llvm.ptr<i32>
    %26 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %27 = llvm.insertvalue %25, %26[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %28 = llvm.insertvalue %25, %27[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %29 = llvm.mlir.constant(0 : index) : i64
    %30 = llvm.insertvalue %29, %28[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %31 = llvm.mlir.constant(1 : index) : i64
    %32 = llvm.insertvalue %31, %30[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %33 = llvm.mlir.constant(1 : index) : i64
    %34 = llvm.insertvalue %33, %32[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %35 = llvm.mlir.constant(1 : index) : i64
    %36 = llvm.mlir.null : !llvm.ptr<i1>
    %37 = llvm.getelementptr %36[%35] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %38 = llvm.ptrtoint %37 : !llvm.ptr<i1> to i64
    %39 = llvm.call @malloc(%38) : (i64) -> !llvm.ptr<i8>
    %40 = llvm.bitcast %39 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %41 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64)>
    %42 = llvm.insertvalue %40, %41[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64)> 
    %43 = llvm.insertvalue %40, %42[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64)> 
    %44 = llvm.mlir.constant(0 : index) : i64
    %45 = llvm.insertvalue %44, %43[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64)> 
    %46 = llvm.extractvalue %3[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64)> 
    %47 = llvm.load %46 : !llvm.ptr<i1>
    %48 = llvm.extractvalue %23[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64)> 
    %49 = llvm.load %48 : !llvm.ptr<i1>
    %50 = llvm.xor %47, %49  : i1
    %51 = llvm.extractvalue %45[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64)> 
    llvm.store %50, %51 : !llvm.ptr<i1>
    %52 = llvm.mlir.constant(2 : index) : i64
    %53 = llvm.mlir.constant(2 : index) : i64
    %54 = llvm.mlir.constant(2 : index) : i64
    %55 = llvm.mlir.constant(1 : index) : i64
    %56 = llvm.mlir.constant(1 : index) : i64
    %57 = llvm.mlir.constant(4 : index) : i64
    %58 = llvm.mlir.constant(8 : index) : i64
    %59 = llvm.mlir.null : !llvm.ptr<i32>
    %60 = llvm.getelementptr %59[%58] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %61 = llvm.ptrtoint %60 : !llvm.ptr<i32> to i64
    %62 = llvm.mlir.constant(16 : index) : i64
    %63 = llvm.add %61, %62  : i64
    %64 = llvm.call @malloc(%63) : (i64) -> !llvm.ptr<i8>
    %65 = llvm.bitcast %64 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %66 = llvm.ptrtoint %65 : !llvm.ptr<i32> to i64
    %67 = llvm.mlir.constant(1 : index) : i64
    %68 = llvm.sub %62, %67  : i64
    %69 = llvm.add %66, %68  : i64
    %70 = llvm.urem %69, %62  : i64
    %71 = llvm.sub %69, %70  : i64
    %72 = llvm.inttoptr %71 : i64 to !llvm.ptr<i32>
    %73 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %74 = llvm.insertvalue %65, %73[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %75 = llvm.insertvalue %72, %74[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %76 = llvm.mlir.constant(0 : index) : i64
    %77 = llvm.insertvalue %76, %75[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %78 = llvm.insertvalue %52, %77[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %79 = llvm.insertvalue %53, %78[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %80 = llvm.insertvalue %54, %79[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %81 = llvm.insertvalue %55, %80[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %82 = llvm.insertvalue %57, %81[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %83 = llvm.insertvalue %54, %82[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %84 = llvm.insertvalue %55, %83[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %85 = llvm.insertvalue %56, %84[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %86 = llvm.mlir.constant(0 : index) : i64
    %87 = llvm.mlir.constant(2 : index) : i64
    %88 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%86 : i64)
  ^bb1(%89: i64):  // 2 preds: ^bb0, ^bb11
    %90 = llvm.icmp "slt" %89, %87 : i64
    llvm.cond_br %90, ^bb2, ^bb12
  ^bb2:  // pred: ^bb1
    %91 = llvm.mlir.constant(0 : index) : i64
    %92 = llvm.mlir.constant(2 : index) : i64
    %93 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb3(%91 : i64)
  ^bb3(%94: i64):  // 2 preds: ^bb2, ^bb10
    %95 = llvm.icmp "slt" %94, %92 : i64
    llvm.cond_br %95, ^bb4, ^bb11
  ^bb4:  // pred: ^bb3
    %96 = llvm.mlir.constant(0 : index) : i64
    %97 = llvm.mlir.constant(2 : index) : i64
    %98 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb5(%96 : i64)
  ^bb5(%99: i64):  // 2 preds: ^bb4, ^bb9
    %100 = llvm.icmp "slt" %99, %97 : i64
    llvm.cond_br %100, ^bb6, ^bb10
  ^bb6:  // pred: ^bb5
    %101 = llvm.mlir.constant(0 : index) : i64
    %102 = llvm.mlir.constant(1 : index) : i64
    %103 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb7(%101 : i64)
  ^bb7(%104: i64):  // 2 preds: ^bb6, ^bb8
    %105 = llvm.icmp "slt" %104, %102 : i64
    llvm.cond_br %105, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %106 = llvm.extractvalue %45[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64)> 
    %107 = llvm.load %106 : !llvm.ptr<i1>
    %108 = llvm.extractvalue %15[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %109 = llvm.mlir.constant(4 : index) : i64
    %110 = llvm.mul %89, %109  : i64
    %111 = llvm.mlir.constant(2 : index) : i64
    %112 = llvm.mul %94, %111  : i64
    %113 = llvm.add %110, %112  : i64
    %114 = llvm.add %113, %99  : i64
    %115 = llvm.add %114, %104  : i64
    %116 = llvm.getelementptr %108[%115] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %117 = llvm.load %116 : !llvm.ptr<i32>
    %118 = llvm.extractvalue %34[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %119 = llvm.getelementptr %118[%104] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %120 = llvm.load %119 : !llvm.ptr<i32>
    %121 = llvm.select %107, %117, %120 : i1, i32
    %122 = llvm.extractvalue %85[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %123 = llvm.mlir.constant(4 : index) : i64
    %124 = llvm.mul %89, %123  : i64
    %125 = llvm.mlir.constant(2 : index) : i64
    %126 = llvm.mul %94, %125  : i64
    %127 = llvm.add %124, %126  : i64
    %128 = llvm.add %127, %99  : i64
    %129 = llvm.add %128, %104  : i64
    %130 = llvm.getelementptr %122[%129] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %121, %130 : !llvm.ptr<i32>
    %131 = llvm.add %104, %103  : i64
    llvm.br ^bb7(%131 : i64)
  ^bb9:  // pred: ^bb7
    %132 = llvm.add %99, %98  : i64
    llvm.br ^bb5(%132 : i64)
  ^bb10:  // pred: ^bb5
    %133 = llvm.add %94, %93  : i64
    llvm.br ^bb3(%133 : i64)
  ^bb11:  // pred: ^bb3
    %134 = llvm.add %89, %88  : i64
    llvm.br ^bb1(%134 : i64)
  ^bb12:  // pred: ^bb1
    %135 = llvm.mlir.constant(2 : index) : i64
    %136 = llvm.mlir.constant(2 : index) : i64
    %137 = llvm.mlir.constant(2 : index) : i64
    %138 = llvm.mlir.constant(1 : index) : i64
    %139 = llvm.mlir.constant(1 : index) : i64
    %140 = llvm.mlir.constant(4 : index) : i64
    %141 = llvm.mlir.constant(8 : index) : i64
    %142 = llvm.mlir.null : !llvm.ptr<i1>
    %143 = llvm.getelementptr %142[%141] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %144 = llvm.ptrtoint %143 : !llvm.ptr<i1> to i64
    %145 = llvm.mlir.constant(16 : index) : i64
    %146 = llvm.add %144, %145  : i64
    %147 = llvm.call @malloc(%146) : (i64) -> !llvm.ptr<i8>
    %148 = llvm.bitcast %147 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %149 = llvm.ptrtoint %148 : !llvm.ptr<i1> to i64
    %150 = llvm.mlir.constant(1 : index) : i64
    %151 = llvm.sub %145, %150  : i64
    %152 = llvm.add %149, %151  : i64
    %153 = llvm.urem %152, %145  : i64
    %154 = llvm.sub %152, %153  : i64
    %155 = llvm.inttoptr %154 : i64 to !llvm.ptr<i1>
    %156 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>
    %157 = llvm.insertvalue %148, %156[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %158 = llvm.insertvalue %155, %157[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %159 = llvm.mlir.constant(0 : index) : i64
    %160 = llvm.insertvalue %159, %158[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %161 = llvm.insertvalue %135, %160[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %162 = llvm.insertvalue %136, %161[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %163 = llvm.insertvalue %137, %162[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %164 = llvm.insertvalue %138, %163[3, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %165 = llvm.insertvalue %140, %164[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %166 = llvm.insertvalue %137, %165[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %167 = llvm.insertvalue %138, %166[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %168 = llvm.insertvalue %139, %167[4, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %169 = llvm.mlir.constant(0 : index) : i64
    %170 = llvm.mlir.constant(2 : index) : i64
    %171 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb13(%169 : i64)
  ^bb13(%172: i64):  // 2 preds: ^bb12, ^bb23
    %173 = llvm.icmp "slt" %172, %170 : i64
    llvm.cond_br %173, ^bb14, ^bb24
  ^bb14:  // pred: ^bb13
    %174 = llvm.mlir.constant(0 : index) : i64
    %175 = llvm.mlir.constant(2 : index) : i64
    %176 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb15(%174 : i64)
  ^bb15(%177: i64):  // 2 preds: ^bb14, ^bb22
    %178 = llvm.icmp "slt" %177, %175 : i64
    llvm.cond_br %178, ^bb16, ^bb23
  ^bb16:  // pred: ^bb15
    %179 = llvm.mlir.constant(0 : index) : i64
    %180 = llvm.mlir.constant(2 : index) : i64
    %181 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb17(%179 : i64)
  ^bb17(%182: i64):  // 2 preds: ^bb16, ^bb21
    %183 = llvm.icmp "slt" %182, %180 : i64
    llvm.cond_br %183, ^bb18, ^bb22
  ^bb18:  // pred: ^bb17
    %184 = llvm.mlir.constant(0 : index) : i64
    %185 = llvm.mlir.constant(1 : index) : i64
    %186 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb19(%184 : i64)
  ^bb19(%187: i64):  // 2 preds: ^bb18, ^bb20
    %188 = llvm.icmp "slt" %187, %185 : i64
    llvm.cond_br %188, ^bb20, ^bb21
  ^bb20:  // pred: ^bb19
    %189 = llvm.extractvalue %85[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %190 = llvm.mlir.constant(4 : index) : i64
    %191 = llvm.mul %172, %190  : i64
    %192 = llvm.mlir.constant(2 : index) : i64
    %193 = llvm.mul %177, %192  : i64
    %194 = llvm.add %191, %193  : i64
    %195 = llvm.add %194, %182  : i64
    %196 = llvm.add %195, %187  : i64
    %197 = llvm.getelementptr %189[%196] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %198 = llvm.load %197 : !llvm.ptr<i32>
    %199 = llvm.extractvalue %85[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %200 = llvm.mlir.constant(4 : index) : i64
    %201 = llvm.mul %172, %200  : i64
    %202 = llvm.mlir.constant(2 : index) : i64
    %203 = llvm.mul %177, %202  : i64
    %204 = llvm.add %201, %203  : i64
    %205 = llvm.add %204, %182  : i64
    %206 = llvm.add %205, %187  : i64
    %207 = llvm.getelementptr %199[%206] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %208 = llvm.load %207 : !llvm.ptr<i32>
    %209 = llvm.icmp "slt" %198, %208 : i32
    %210 = llvm.extractvalue %168[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %211 = llvm.mlir.constant(4 : index) : i64
    %212 = llvm.mul %172, %211  : i64
    %213 = llvm.mlir.constant(2 : index) : i64
    %214 = llvm.mul %177, %213  : i64
    %215 = llvm.add %212, %214  : i64
    %216 = llvm.add %215, %182  : i64
    %217 = llvm.add %216, %187  : i64
    %218 = llvm.getelementptr %210[%217] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %209, %218 : !llvm.ptr<i1>
    %219 = llvm.add %187, %186  : i64
    llvm.br ^bb19(%219 : i64)
  ^bb21:  // pred: ^bb19
    %220 = llvm.add %182, %181  : i64
    llvm.br ^bb17(%220 : i64)
  ^bb22:  // pred: ^bb17
    %221 = llvm.add %177, %176  : i64
    llvm.br ^bb15(%221 : i64)
  ^bb23:  // pred: ^bb15
    %222 = llvm.add %172, %171  : i64
    llvm.br ^bb13(%222 : i64)
  ^bb24:  // pred: ^bb13
    %223 = llvm.mlir.constant(2 : index) : i64
    %224 = llvm.mlir.constant(2 : index) : i64
    %225 = llvm.mlir.constant(2 : index) : i64
    %226 = llvm.mlir.constant(1 : index) : i64
    %227 = llvm.mlir.constant(1 : index) : i64
    %228 = llvm.mlir.constant(4 : index) : i64
    %229 = llvm.mlir.constant(8 : index) : i64
    %230 = llvm.mlir.null : !llvm.ptr<i32>
    %231 = llvm.getelementptr %230[%229] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %232 = llvm.ptrtoint %231 : !llvm.ptr<i32> to i64
    %233 = llvm.mlir.constant(16 : index) : i64
    %234 = llvm.add %232, %233  : i64
    %235 = llvm.call @malloc(%234) : (i64) -> !llvm.ptr<i8>
    %236 = llvm.bitcast %235 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %237 = llvm.ptrtoint %236 : !llvm.ptr<i32> to i64
    %238 = llvm.mlir.constant(1 : index) : i64
    %239 = llvm.sub %233, %238  : i64
    %240 = llvm.add %237, %239  : i64
    %241 = llvm.urem %240, %233  : i64
    %242 = llvm.sub %240, %241  : i64
    %243 = llvm.inttoptr %242 : i64 to !llvm.ptr<i32>
    %244 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %245 = llvm.insertvalue %236, %244[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %246 = llvm.insertvalue %243, %245[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %247 = llvm.mlir.constant(0 : index) : i64
    %248 = llvm.insertvalue %247, %246[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %249 = llvm.insertvalue %223, %248[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %250 = llvm.insertvalue %224, %249[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %251 = llvm.insertvalue %225, %250[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %252 = llvm.insertvalue %226, %251[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %253 = llvm.insertvalue %228, %252[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %254 = llvm.insertvalue %225, %253[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %255 = llvm.insertvalue %226, %254[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %256 = llvm.insertvalue %227, %255[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %257 = llvm.mlir.constant(0 : index) : i64
    %258 = llvm.mlir.constant(2 : index) : i64
    %259 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb25(%257 : i64)
  ^bb25(%260: i64):  // 2 preds: ^bb24, ^bb35
    %261 = llvm.icmp "slt" %260, %258 : i64
    llvm.cond_br %261, ^bb26, ^bb36
  ^bb26:  // pred: ^bb25
    %262 = llvm.mlir.constant(0 : index) : i64
    %263 = llvm.mlir.constant(2 : index) : i64
    %264 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb27(%262 : i64)
  ^bb27(%265: i64):  // 2 preds: ^bb26, ^bb34
    %266 = llvm.icmp "slt" %265, %263 : i64
    llvm.cond_br %266, ^bb28, ^bb35
  ^bb28:  // pred: ^bb27
    %267 = llvm.mlir.constant(0 : index) : i64
    %268 = llvm.mlir.constant(2 : index) : i64
    %269 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb29(%267 : i64)
  ^bb29(%270: i64):  // 2 preds: ^bb28, ^bb33
    %271 = llvm.icmp "slt" %270, %268 : i64
    llvm.cond_br %271, ^bb30, ^bb34
  ^bb30:  // pred: ^bb29
    %272 = llvm.mlir.constant(0 : index) : i64
    %273 = llvm.mlir.constant(1 : index) : i64
    %274 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb31(%272 : i64)
  ^bb31(%275: i64):  // 2 preds: ^bb30, ^bb32
    %276 = llvm.icmp "slt" %275, %273 : i64
    llvm.cond_br %276, ^bb32, ^bb33
  ^bb32:  // pred: ^bb31
    %277 = llvm.extractvalue %168[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %278 = llvm.mlir.constant(4 : index) : i64
    %279 = llvm.mul %260, %278  : i64
    %280 = llvm.mlir.constant(2 : index) : i64
    %281 = llvm.mul %265, %280  : i64
    %282 = llvm.add %279, %281  : i64
    %283 = llvm.add %282, %270  : i64
    %284 = llvm.add %283, %275  : i64
    %285 = llvm.getelementptr %277[%284] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %286 = llvm.load %285 : !llvm.ptr<i1>
    %287 = llvm.extractvalue %85[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %288 = llvm.mlir.constant(4 : index) : i64
    %289 = llvm.mul %260, %288  : i64
    %290 = llvm.mlir.constant(2 : index) : i64
    %291 = llvm.mul %265, %290  : i64
    %292 = llvm.add %289, %291  : i64
    %293 = llvm.add %292, %270  : i64
    %294 = llvm.add %293, %275  : i64
    %295 = llvm.getelementptr %287[%294] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %296 = llvm.load %295 : !llvm.ptr<i32>
    %297 = llvm.extractvalue %85[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %298 = llvm.mlir.constant(4 : index) : i64
    %299 = llvm.mul %260, %298  : i64
    %300 = llvm.mlir.constant(2 : index) : i64
    %301 = llvm.mul %265, %300  : i64
    %302 = llvm.add %299, %301  : i64
    %303 = llvm.add %302, %270  : i64
    %304 = llvm.add %303, %275  : i64
    %305 = llvm.getelementptr %297[%304] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %306 = llvm.load %305 : !llvm.ptr<i32>
    %307 = llvm.select %286, %296, %306 : i1, i32
    %308 = llvm.extractvalue %256[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %309 = llvm.mlir.constant(4 : index) : i64
    %310 = llvm.mul %260, %309  : i64
    %311 = llvm.mlir.constant(2 : index) : i64
    %312 = llvm.mul %265, %311  : i64
    %313 = llvm.add %310, %312  : i64
    %314 = llvm.add %313, %270  : i64
    %315 = llvm.add %314, %275  : i64
    %316 = llvm.getelementptr %308[%315] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %307, %316 : !llvm.ptr<i32>
    %317 = llvm.add %275, %274  : i64
    llvm.br ^bb31(%317 : i64)
  ^bb33:  // pred: ^bb31
    %318 = llvm.add %270, %269  : i64
    llvm.br ^bb29(%318 : i64)
  ^bb34:  // pred: ^bb29
    %319 = llvm.add %265, %264  : i64
    llvm.br ^bb27(%319 : i64)
  ^bb35:  // pred: ^bb27
    %320 = llvm.add %260, %259  : i64
    llvm.br ^bb25(%320 : i64)
  ^bb36:  // pred: ^bb25
    %321 = llvm.mlir.constant(2 : index) : i64
    %322 = llvm.mlir.constant(2 : index) : i64
    %323 = llvm.mlir.constant(2 : index) : i64
    %324 = llvm.mlir.constant(1 : index) : i64
    %325 = llvm.mlir.constant(1 : index) : i64
    %326 = llvm.mlir.constant(4 : index) : i64
    %327 = llvm.mlir.constant(8 : index) : i64
    %328 = llvm.mlir.null : !llvm.ptr<i1>
    %329 = llvm.getelementptr %328[%327] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %330 = llvm.ptrtoint %329 : !llvm.ptr<i1> to i64
    %331 = llvm.mlir.constant(16 : index) : i64
    %332 = llvm.add %330, %331  : i64
    %333 = llvm.call @malloc(%332) : (i64) -> !llvm.ptr<i8>
    %334 = llvm.bitcast %333 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %335 = llvm.ptrtoint %334 : !llvm.ptr<i1> to i64
    %336 = llvm.mlir.constant(1 : index) : i64
    %337 = llvm.sub %331, %336  : i64
    %338 = llvm.add %335, %337  : i64
    %339 = llvm.urem %338, %331  : i64
    %340 = llvm.sub %338, %339  : i64
    %341 = llvm.inttoptr %340 : i64 to !llvm.ptr<i1>
    %342 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>
    %343 = llvm.insertvalue %334, %342[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %344 = llvm.insertvalue %341, %343[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %345 = llvm.mlir.constant(0 : index) : i64
    %346 = llvm.insertvalue %345, %344[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %347 = llvm.insertvalue %321, %346[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %348 = llvm.insertvalue %322, %347[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %349 = llvm.insertvalue %323, %348[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %350 = llvm.insertvalue %324, %349[3, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %351 = llvm.insertvalue %326, %350[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %352 = llvm.insertvalue %323, %351[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %353 = llvm.insertvalue %324, %352[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %354 = llvm.insertvalue %325, %353[4, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %355 = llvm.mlir.constant(0 : index) : i64
    %356 = llvm.mlir.constant(2 : index) : i64
    %357 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb37(%355 : i64)
  ^bb37(%358: i64):  // 2 preds: ^bb36, ^bb47
    %359 = llvm.icmp "slt" %358, %356 : i64
    llvm.cond_br %359, ^bb38, ^bb48
  ^bb38:  // pred: ^bb37
    %360 = llvm.mlir.constant(0 : index) : i64
    %361 = llvm.mlir.constant(2 : index) : i64
    %362 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb39(%360 : i64)
  ^bb39(%363: i64):  // 2 preds: ^bb38, ^bb46
    %364 = llvm.icmp "slt" %363, %361 : i64
    llvm.cond_br %364, ^bb40, ^bb47
  ^bb40:  // pred: ^bb39
    %365 = llvm.mlir.constant(0 : index) : i64
    %366 = llvm.mlir.constant(2 : index) : i64
    %367 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb41(%365 : i64)
  ^bb41(%368: i64):  // 2 preds: ^bb40, ^bb45
    %369 = llvm.icmp "slt" %368, %366 : i64
    llvm.cond_br %369, ^bb42, ^bb46
  ^bb42:  // pred: ^bb41
    %370 = llvm.mlir.constant(0 : index) : i64
    %371 = llvm.mlir.constant(1 : index) : i64
    %372 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb43(%370 : i64)
  ^bb43(%373: i64):  // 2 preds: ^bb42, ^bb44
    %374 = llvm.icmp "slt" %373, %371 : i64
    llvm.cond_br %374, ^bb44, ^bb45
  ^bb44:  // pred: ^bb43
    %375 = llvm.extractvalue %256[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %376 = llvm.mlir.constant(4 : index) : i64
    %377 = llvm.mul %358, %376  : i64
    %378 = llvm.mlir.constant(2 : index) : i64
    %379 = llvm.mul %363, %378  : i64
    %380 = llvm.add %377, %379  : i64
    %381 = llvm.add %380, %368  : i64
    %382 = llvm.add %381, %373  : i64
    %383 = llvm.getelementptr %375[%382] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %384 = llvm.load %383 : !llvm.ptr<i32>
    %385 = llvm.icmp "ne" %384, %16 : i32
    %386 = llvm.extractvalue %354[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %387 = llvm.mlir.constant(4 : index) : i64
    %388 = llvm.mul %358, %387  : i64
    %389 = llvm.mlir.constant(2 : index) : i64
    %390 = llvm.mul %363, %389  : i64
    %391 = llvm.add %388, %390  : i64
    %392 = llvm.add %391, %368  : i64
    %393 = llvm.add %392, %373  : i64
    %394 = llvm.getelementptr %386[%393] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %385, %394 : !llvm.ptr<i1>
    %395 = llvm.add %373, %372  : i64
    llvm.br ^bb43(%395 : i64)
  ^bb45:  // pred: ^bb43
    %396 = llvm.add %368, %367  : i64
    llvm.br ^bb41(%396 : i64)
  ^bb46:  // pred: ^bb41
    %397 = llvm.add %363, %362  : i64
    llvm.br ^bb39(%397 : i64)
  ^bb47:  // pred: ^bb39
    %398 = llvm.add %358, %357  : i64
    llvm.br ^bb37(%398 : i64)
  ^bb48:  // pred: ^bb37
    llvm.return %354 : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>>, %arg1: !llvm.ptr<struct<(ptr<i1>, ptr<i1>, i64)>>, %arg2: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) attributes {input_names = ["v0_0", "v4_0"], llvm.emit_c_interface, output_names = ["v3_0"]} {
    %0 = llvm.load %arg1 : !llvm.ptr<struct<(ptr<i1>, ptr<i1>, i64)>>
    %1 = llvm.extractvalue %0[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64)> 
    %2 = llvm.extractvalue %0[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64)> 
    %3 = llvm.extractvalue %0[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64)> 
    %4 = llvm.load %arg2 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    %5 = llvm.extractvalue %4[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %6 = llvm.extractvalue %4[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %7 = llvm.extractvalue %4[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %8 = llvm.extractvalue %4[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %9 = llvm.extractvalue %4[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %10 = llvm.extractvalue %4[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %11 = llvm.extractvalue %4[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %12 = llvm.extractvalue %4[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %13 = llvm.extractvalue %4[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %14 = llvm.extractvalue %4[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %15 = llvm.extractvalue %4[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %16 = llvm.call @main_graph(%1, %2, %3, %5, %6, %7, %8, %9, %10, %11, %12, %13, %14, %15) : (!llvm.ptr<i1>, !llvm.ptr<i1>, i64, !llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>
    llvm.store %16, %arg0 : !llvm.ptr<struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>>
    llvm.return
  }
  llvm.func @run_main_graph(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.call @omTensorListGetOmtArray(%arg0) : (!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.alloca %1 x !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> : (i64) -> !llvm.ptr<struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>>
    %3 = llvm.mlir.constant(0 : i64) : i64
    %4 = llvm.getelementptr %0[%3] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    %5 = llvm.load %4 : !llvm.ptr<ptr<i8>>
    %6 = llvm.alloca %1 x !llvm.struct<(ptr<i1>, ptr<i1>, i64)> : (i64) -> !llvm.ptr<struct<(ptr<i1>, ptr<i1>, i64)>>
    %7 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64)>
    %8 = llvm.call @omTensorGetDataPtr(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i8>
    %9 = llvm.bitcast %8 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %10 = llvm.insertvalue %9, %7[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64)> 
    %11 = llvm.insertvalue %9, %10[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64)> 
    %12 = llvm.mlir.constant(0 : i64) : i64
    %13 = llvm.insertvalue %12, %11[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64)> 
    %14 = llvm.call @omTensorGetShape(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %15 = llvm.call @omTensorGetStrides(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    llvm.store %13, %6 : !llvm.ptr<struct<(ptr<i1>, ptr<i1>, i64)>>
    %16 = llvm.mlir.constant(1 : i64) : i64
    %17 = llvm.getelementptr %0[%16] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    %18 = llvm.load %17 : !llvm.ptr<ptr<i8>>
    %19 = llvm.alloca %1 x !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> : (i64) -> !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    %20 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %21 = llvm.call @omTensorGetDataPtr(%18) : (!llvm.ptr<i8>) -> !llvm.ptr<i8>
    %22 = llvm.bitcast %21 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %23 = llvm.insertvalue %22, %20[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %24 = llvm.insertvalue %22, %23[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %25 = llvm.mlir.constant(0 : i64) : i64
    %26 = llvm.insertvalue %25, %24[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %27 = llvm.call @omTensorGetShape(%18) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %28 = llvm.call @omTensorGetStrides(%18) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %29 = llvm.mlir.constant(0 : i64) : i64
    %30 = llvm.getelementptr %27[%29] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %31 = llvm.load %30 : !llvm.ptr<i64>
    %32 = llvm.insertvalue %31, %26[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %33 = llvm.getelementptr %28[%29] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %34 = llvm.load %33 : !llvm.ptr<i64>
    %35 = llvm.insertvalue %34, %32[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %36 = llvm.mlir.constant(1 : i64) : i64
    %37 = llvm.getelementptr %27[%36] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %38 = llvm.load %37 : !llvm.ptr<i64>
    %39 = llvm.insertvalue %38, %35[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %40 = llvm.getelementptr %28[%36] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %41 = llvm.load %40 : !llvm.ptr<i64>
    %42 = llvm.insertvalue %41, %39[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %43 = llvm.mlir.constant(2 : i64) : i64
    %44 = llvm.getelementptr %27[%43] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %45 = llvm.load %44 : !llvm.ptr<i64>
    %46 = llvm.insertvalue %45, %42[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %47 = llvm.getelementptr %28[%43] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %48 = llvm.load %47 : !llvm.ptr<i64>
    %49 = llvm.insertvalue %48, %46[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %50 = llvm.mlir.constant(3 : i64) : i64
    %51 = llvm.getelementptr %27[%50] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %52 = llvm.load %51 : !llvm.ptr<i64>
    %53 = llvm.insertvalue %52, %49[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %54 = llvm.getelementptr %28[%50] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %55 = llvm.load %54 : !llvm.ptr<i64>
    %56 = llvm.insertvalue %55, %53[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    llvm.store %56, %19 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    llvm.call @_mlir_ciface_main_graph(%2, %6, %19) : (!llvm.ptr<struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>>, !llvm.ptr<struct<(ptr<i1>, ptr<i1>, i64)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) -> ()
    %57 = llvm.load %2 : !llvm.ptr<struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>>
    %58 = llvm.mlir.constant(1 : i64) : i64
    %59 = llvm.mlir.constant(8 : i64) : i64
    %60 = llvm.call @malloc(%59) : (i64) -> !llvm.ptr<i8>
    %61 = llvm.bitcast %60 : !llvm.ptr<i8> to !llvm.ptr<ptr<i8>>
    %62 = llvm.mlir.constant(4 : i64) : i64
    %63 = llvm.call @omTensorCreateUntyped(%62) : (i64) -> !llvm.ptr<i8>
    %64 = llvm.mlir.constant(1 : i64) : i64
    %65 = llvm.extractvalue %57[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %66 = llvm.bitcast %65 : !llvm.ptr<i1> to !llvm.ptr<i8>
    %67 = llvm.extractvalue %57[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %68 = llvm.bitcast %67 : !llvm.ptr<i1> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%63, %64, %66, %68) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %69 = llvm.mlir.constant(9 : i64) : i64
    llvm.call @omTensorSetDataType(%63, %69) : (!llvm.ptr<i8>, i64) -> ()
    %70 = llvm.call @omTensorGetShape(%63) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %71 = llvm.call @omTensorGetStrides(%63) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %72 = llvm.mlir.constant(0 : i64) : i64
    %73 = llvm.extractvalue %57[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %74 = llvm.getelementptr %70[%72] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %73, %74 : !llvm.ptr<i64>
    %75 = llvm.extractvalue %57[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %76 = llvm.getelementptr %71[%72] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %75, %76 : !llvm.ptr<i64>
    %77 = llvm.mlir.constant(1 : i64) : i64
    %78 = llvm.extractvalue %57[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %79 = llvm.getelementptr %70[%77] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %78, %79 : !llvm.ptr<i64>
    %80 = llvm.extractvalue %57[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %81 = llvm.getelementptr %71[%77] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %80, %81 : !llvm.ptr<i64>
    %82 = llvm.mlir.constant(2 : i64) : i64
    %83 = llvm.extractvalue %57[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %84 = llvm.getelementptr %70[%82] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %83, %84 : !llvm.ptr<i64>
    %85 = llvm.extractvalue %57[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %86 = llvm.getelementptr %71[%82] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %85, %86 : !llvm.ptr<i64>
    %87 = llvm.mlir.constant(3 : i64) : i64
    %88 = llvm.extractvalue %57[3, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %89 = llvm.getelementptr %70[%87] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %88, %89 : !llvm.ptr<i64>
    %90 = llvm.extractvalue %57[4, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %91 = llvm.getelementptr %71[%87] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %90, %91 : !llvm.ptr<i64>
    %92 = llvm.mlir.constant(0 : i64) : i64
    %93 = llvm.getelementptr %61[%92] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %63, %93 : !llvm.ptr<ptr<i8>>
    %94 = llvm.call @omTensorListCreate(%61, %58, %1) : (!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
    llvm.return %94 : !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_in_sig : !llvm.ptr<array<128 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<128 x i8>> to !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_out_sig : !llvm.ptr<array<70 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<70 x i8>> to !llvm.ptr<i8>
    llvm.return %8 : !llvm.ptr<i8>
  ^bb2:  // pred: ^bb0
    %9 = llvm.mlir.null : !llvm.ptr<i8>
    llvm.return %9 : !llvm.ptr<i8>
  }
}

