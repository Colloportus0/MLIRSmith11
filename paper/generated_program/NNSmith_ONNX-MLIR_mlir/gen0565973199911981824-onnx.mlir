module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1] , \22name\22 : \22v5_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 2 , 1] , \22name\22 : \22v4_0\22 }\0A ,    { \22type\22 : \22i1\22 , \22dims\22 : [1 , 1 , 2 , 1] , \22name\22 : \22v3_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1] , \22name\22 : \22v0_0\22 }\0A ,    { \22type\22 : \22i64\22 , \22dims\22 : [2] , \22name\22 : \22v7_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
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
  llvm.mlir.global internal constant @constant_5(dense<1> : tensor<2xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<2 x i64>
  llvm.mlir.global internal constant @constant_4(dense<-1> : tensor<i64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x i64>
  llvm.mlir.global internal constant @constant_3(dense<1> : tensor<2xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<2 x i64>
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: !llvm.ptr<i32>, %arg8: !llvm.ptr<i32>, %arg9: i64, %arg10: i64, %arg11: i64, %arg12: i64, %arg13: i64, %arg14: i64, %arg15: i64, %arg16: !llvm.ptr<i1>, %arg17: !llvm.ptr<i1>, %arg18: i64, %arg19: i64, %arg20: i64, %arg21: i64, %arg22: i64, %arg23: i64, %arg24: i64, %arg25: i64, %arg26: i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>)> attributes {input_names = ["v5_0", "v4_0", "v3_0"], llvm.emit_c_interface, output_names = ["v0_0", "v7_0"]} {
    %0 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>
    %1 = llvm.insertvalue %arg0, %0[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %2 = llvm.insertvalue %arg1, %1[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %3 = llvm.insertvalue %arg2, %2[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %4 = llvm.insertvalue %arg3, %3[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %5 = llvm.insertvalue %arg5, %4[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %6 = llvm.insertvalue %arg4, %5[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %7 = llvm.insertvalue %arg6, %6[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %8 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>
    %9 = llvm.insertvalue %arg7, %8[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %10 = llvm.insertvalue %arg8, %9[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %11 = llvm.insertvalue %arg9, %10[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %12 = llvm.insertvalue %arg10, %11[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %13 = llvm.insertvalue %arg13, %12[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %14 = llvm.insertvalue %arg11, %13[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %15 = llvm.insertvalue %arg14, %14[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %16 = llvm.insertvalue %arg12, %15[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %17 = llvm.insertvalue %arg15, %16[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %18 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>
    %19 = llvm.insertvalue %arg16, %18[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %20 = llvm.insertvalue %arg17, %19[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %21 = llvm.insertvalue %arg18, %20[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %22 = llvm.insertvalue %arg19, %21[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %23 = llvm.insertvalue %arg23, %22[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %24 = llvm.insertvalue %arg20, %23[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %25 = llvm.insertvalue %arg24, %24[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %26 = llvm.insertvalue %arg21, %25[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %27 = llvm.insertvalue %arg25, %26[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %28 = llvm.insertvalue %arg22, %27[3, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %29 = llvm.insertvalue %arg26, %28[4, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %30 = llvm.mlir.constant(-9223372036854775808 : i64) : i64
    %31 = llvm.mlir.constant(0 : i64) : i64
    %32 = llvm.mlir.constant(0 : index) : i64
    %33 = llvm.mlir.constant(1 : i64) : i64
    %34 = llvm.mlir.addressof @constant_3 : !llvm.ptr<array<2 x i64>>
    %35 = llvm.bitcast %34 : !llvm.ptr<array<2 x i64>> to !llvm.ptr<i64>
    %36 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %37 = llvm.insertvalue %35, %36[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %38 = llvm.insertvalue %35, %37[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %39 = llvm.mlir.constant(0 : index) : i64
    %40 = llvm.insertvalue %39, %38[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %41 = llvm.mlir.constant(2 : index) : i64
    %42 = llvm.insertvalue %41, %40[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %43 = llvm.mlir.constant(1 : index) : i64
    %44 = llvm.insertvalue %43, %42[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %45 = llvm.mlir.addressof @constant_4 : !llvm.ptr<array<1 x i64>>
    %46 = llvm.bitcast %45 : !llvm.ptr<array<1 x i64>> to !llvm.ptr<i64>
    %47 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64)>
    %48 = llvm.insertvalue %46, %47[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %49 = llvm.insertvalue %46, %48[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %50 = llvm.mlir.constant(0 : index) : i64
    %51 = llvm.insertvalue %50, %49[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %52 = llvm.mlir.addressof @constant_5 : !llvm.ptr<array<2 x i64>>
    %53 = llvm.bitcast %52 : !llvm.ptr<array<2 x i64>> to !llvm.ptr<i64>
    %54 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %55 = llvm.insertvalue %53, %54[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %56 = llvm.insertvalue %53, %55[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %57 = llvm.mlir.constant(0 : index) : i64
    %58 = llvm.insertvalue %57, %56[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %59 = llvm.mlir.constant(2 : index) : i64
    %60 = llvm.insertvalue %59, %58[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %61 = llvm.mlir.constant(1 : index) : i64
    %62 = llvm.insertvalue %61, %60[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %63 = llvm.mlir.constant(2 : index) : i64
    %64 = llvm.mlir.constant(1 : index) : i64
    %65 = llvm.mlir.null : !llvm.ptr<i64>
    %66 = llvm.getelementptr %65[%63] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %67 = llvm.ptrtoint %66 : !llvm.ptr<i64> to i64
    %68 = llvm.mlir.constant(16 : index) : i64
    %69 = llvm.add %67, %68  : i64
    %70 = llvm.call @malloc(%69) : (i64) -> !llvm.ptr<i8>
    %71 = llvm.bitcast %70 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %72 = llvm.ptrtoint %71 : !llvm.ptr<i64> to i64
    %73 = llvm.mlir.constant(1 : index) : i64
    %74 = llvm.sub %68, %73  : i64
    %75 = llvm.add %72, %74  : i64
    %76 = llvm.urem %75, %68  : i64
    %77 = llvm.sub %75, %76  : i64
    %78 = llvm.inttoptr %77 : i64 to !llvm.ptr<i64>
    %79 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %80 = llvm.insertvalue %71, %79[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %81 = llvm.insertvalue %78, %80[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %82 = llvm.mlir.constant(0 : index) : i64
    %83 = llvm.insertvalue %82, %81[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %84 = llvm.insertvalue %63, %83[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %85 = llvm.insertvalue %64, %84[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %86 = llvm.mlir.constant(0 : index) : i64
    %87 = llvm.mlir.constant(2 : index) : i64
    %88 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%86 : i64)
  ^bb1(%89: i64):  // 2 preds: ^bb0, ^bb2
    %90 = llvm.icmp "slt" %89, %87 : i64
    llvm.cond_br %90, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    %91 = llvm.extractvalue %85[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %92 = llvm.getelementptr %91[%89] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %33, %92 : !llvm.ptr<i64>
    %93 = llvm.add %89, %88  : i64
    llvm.br ^bb1(%93 : i64)
  ^bb3:  // pred: ^bb1
    %94 = llvm.mlir.constant(2 : index) : i64
    %95 = llvm.mlir.constant(1 : index) : i64
    %96 = llvm.mlir.null : !llvm.ptr<i64>
    %97 = llvm.getelementptr %96[%94] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %98 = llvm.ptrtoint %97 : !llvm.ptr<i64> to i64
    %99 = llvm.mlir.constant(16 : index) : i64
    %100 = llvm.add %98, %99  : i64
    %101 = llvm.call @malloc(%100) : (i64) -> !llvm.ptr<i8>
    %102 = llvm.bitcast %101 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %103 = llvm.ptrtoint %102 : !llvm.ptr<i64> to i64
    %104 = llvm.mlir.constant(1 : index) : i64
    %105 = llvm.sub %99, %104  : i64
    %106 = llvm.add %103, %105  : i64
    %107 = llvm.urem %106, %99  : i64
    %108 = llvm.sub %106, %107  : i64
    %109 = llvm.inttoptr %108 : i64 to !llvm.ptr<i64>
    %110 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %111 = llvm.insertvalue %102, %110[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %112 = llvm.insertvalue %109, %111[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %113 = llvm.mlir.constant(0 : index) : i64
    %114 = llvm.insertvalue %113, %112[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %115 = llvm.insertvalue %94, %114[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %116 = llvm.insertvalue %95, %115[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %117 = llvm.mlir.constant(0 : index) : i64
    %118 = llvm.mlir.constant(2 : index) : i64
    %119 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb4(%117 : i64)
  ^bb4(%120: i64):  // 2 preds: ^bb3, ^bb5
    %121 = llvm.icmp "slt" %120, %118 : i64
    llvm.cond_br %121, ^bb5, ^bb6
  ^bb5:  // pred: ^bb4
    %122 = llvm.extractvalue %85[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %123 = llvm.getelementptr %122[%120] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %124 = llvm.load %123 : !llvm.ptr<i64>
    %125 = llvm.extractvalue %51[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %126 = llvm.load %125 : !llvm.ptr<i64>
    %127 = llvm.mul %124, %126  : i64
    %128 = llvm.extractvalue %116[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %129 = llvm.getelementptr %128[%120] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %127, %129 : !llvm.ptr<i64>
    %130 = llvm.add %120, %119  : i64
    llvm.br ^bb4(%130 : i64)
  ^bb6:  // pred: ^bb4
    %131 = llvm.mlir.constant(2 : index) : i64
    %132 = llvm.mlir.constant(1 : index) : i64
    %133 = llvm.mlir.null : !llvm.ptr<i1>
    %134 = llvm.getelementptr %133[%131] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %135 = llvm.ptrtoint %134 : !llvm.ptr<i1> to i64
    %136 = llvm.mlir.constant(16 : index) : i64
    %137 = llvm.add %135, %136  : i64
    %138 = llvm.call @malloc(%137) : (i64) -> !llvm.ptr<i8>
    %139 = llvm.bitcast %138 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %140 = llvm.ptrtoint %139 : !llvm.ptr<i1> to i64
    %141 = llvm.mlir.constant(1 : index) : i64
    %142 = llvm.sub %136, %141  : i64
    %143 = llvm.add %140, %142  : i64
    %144 = llvm.urem %143, %136  : i64
    %145 = llvm.sub %143, %144  : i64
    %146 = llvm.inttoptr %145 : i64 to !llvm.ptr<i1>
    %147 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)>
    %148 = llvm.insertvalue %139, %147[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %149 = llvm.insertvalue %146, %148[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %150 = llvm.mlir.constant(0 : index) : i64
    %151 = llvm.insertvalue %150, %149[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %152 = llvm.insertvalue %131, %151[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %153 = llvm.insertvalue %132, %152[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %154 = llvm.mlir.constant(0 : index) : i64
    %155 = llvm.mlir.constant(2 : index) : i64
    %156 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb7(%154 : i64)
  ^bb7(%157: i64):  // 2 preds: ^bb6, ^bb8
    %158 = llvm.icmp "slt" %157, %155 : i64
    llvm.cond_br %158, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %159 = llvm.extractvalue %44[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %160 = llvm.getelementptr %159[%157] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %161 = llvm.load %160 : !llvm.ptr<i64>
    %162 = llvm.extractvalue %116[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %163 = llvm.getelementptr %162[%157] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %164 = llvm.load %163 : !llvm.ptr<i64>
    %165 = llvm.icmp "eq" %161, %164 : i64
    %166 = llvm.extractvalue %153[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %167 = llvm.getelementptr %166[%157] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %165, %167 : !llvm.ptr<i1>
    %168 = llvm.add %157, %156  : i64
    llvm.br ^bb7(%168 : i64)
  ^bb9:  // pred: ^bb7
    %169 = llvm.mlir.constant(2 : index) : i64
    %170 = llvm.mlir.constant(1 : index) : i64
    %171 = llvm.mlir.null : !llvm.ptr<i64>
    %172 = llvm.getelementptr %171[%169] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %173 = llvm.ptrtoint %172 : !llvm.ptr<i64> to i64
    %174 = llvm.mlir.constant(16 : index) : i64
    %175 = llvm.add %173, %174  : i64
    %176 = llvm.call @malloc(%175) : (i64) -> !llvm.ptr<i8>
    %177 = llvm.bitcast %176 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %178 = llvm.ptrtoint %177 : !llvm.ptr<i64> to i64
    %179 = llvm.mlir.constant(1 : index) : i64
    %180 = llvm.sub %174, %179  : i64
    %181 = llvm.add %178, %180  : i64
    %182 = llvm.urem %181, %174  : i64
    %183 = llvm.sub %181, %182  : i64
    %184 = llvm.inttoptr %183 : i64 to !llvm.ptr<i64>
    %185 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %186 = llvm.insertvalue %177, %185[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %187 = llvm.insertvalue %184, %186[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %188 = llvm.mlir.constant(0 : index) : i64
    %189 = llvm.insertvalue %188, %187[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %190 = llvm.insertvalue %169, %189[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %191 = llvm.insertvalue %170, %190[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %192 = llvm.mlir.constant(0 : index) : i64
    %193 = llvm.mlir.constant(2 : index) : i64
    %194 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb10(%192 : i64)
  ^bb10(%195: i64):  // 2 preds: ^bb9, ^bb11
    %196 = llvm.icmp "slt" %195, %193 : i64
    llvm.cond_br %196, ^bb11, ^bb12
  ^bb11:  // pred: ^bb10
    %197 = llvm.extractvalue %153[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %198 = llvm.getelementptr %197[%195] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %199 = llvm.load %198 : !llvm.ptr<i1>
    %200 = llvm.extractvalue %85[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %201 = llvm.getelementptr %200[%195] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %202 = llvm.load %201 : !llvm.ptr<i64>
    %203 = llvm.extractvalue %62[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %204 = llvm.getelementptr %203[%195] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %205 = llvm.load %204 : !llvm.ptr<i64>
    %206 = llvm.select %199, %202, %205 : i1, i64
    %207 = llvm.extractvalue %191[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %208 = llvm.getelementptr %207[%195] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %206, %208 : !llvm.ptr<i64>
    %209 = llvm.add %195, %194  : i64
    llvm.br ^bb10(%209 : i64)
  ^bb12:  // pred: ^bb10
    %210 = llvm.mlir.constant(1 : index) : i64
    %211 = llvm.mlir.constant(1 : index) : i64
    %212 = llvm.mlir.constant(1 : index) : i64
    %213 = llvm.mlir.null : !llvm.ptr<i32>
    %214 = llvm.getelementptr %213[%210] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %215 = llvm.ptrtoint %214 : !llvm.ptr<i32> to i64
    %216 = llvm.mlir.constant(16 : index) : i64
    %217 = llvm.add %215, %216  : i64
    %218 = llvm.call @malloc(%217) : (i64) -> !llvm.ptr<i8>
    %219 = llvm.bitcast %218 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %220 = llvm.ptrtoint %219 : !llvm.ptr<i32> to i64
    %221 = llvm.mlir.constant(1 : index) : i64
    %222 = llvm.sub %216, %221  : i64
    %223 = llvm.add %220, %222  : i64
    %224 = llvm.urem %223, %216  : i64
    %225 = llvm.sub %223, %224  : i64
    %226 = llvm.inttoptr %225 : i64 to !llvm.ptr<i32>
    %227 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>
    %228 = llvm.insertvalue %219, %227[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %229 = llvm.insertvalue %226, %228[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %230 = llvm.mlir.constant(0 : index) : i64
    %231 = llvm.insertvalue %230, %229[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %232 = llvm.insertvalue %210, %231[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %233 = llvm.insertvalue %211, %232[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %234 = llvm.insertvalue %211, %233[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %235 = llvm.insertvalue %212, %234[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %236 = llvm.mlir.constant(0 : index) : i64
    %237 = llvm.mlir.constant(1 : index) : i64
    %238 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb13(%236 : i64)
  ^bb13(%239: i64):  // 2 preds: ^bb12, ^bb17
    %240 = llvm.icmp "slt" %239, %237 : i64
    llvm.cond_br %240, ^bb14, ^bb18
  ^bb14:  // pred: ^bb13
    %241 = llvm.mlir.constant(0 : index) : i64
    %242 = llvm.mlir.constant(1 : index) : i64
    %243 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb15(%241 : i64)
  ^bb15(%244: i64):  // 2 preds: ^bb14, ^bb16
    %245 = llvm.icmp "slt" %244, %242 : i64
    llvm.cond_br %245, ^bb16, ^bb17
  ^bb16:  // pred: ^bb15
    %246 = llvm.extractvalue %7[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %247 = llvm.add %32, %32  : i64
    %248 = llvm.getelementptr %246[%247] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %249 = llvm.load %248 : !llvm.ptr<i32>
    %250 = llvm.extractvalue %235[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %251 = llvm.add %239, %244  : i64
    %252 = llvm.getelementptr %250[%251] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %249, %252 : !llvm.ptr<i32>
    %253 = llvm.add %244, %243  : i64
    llvm.br ^bb15(%253 : i64)
  ^bb17:  // pred: ^bb15
    %254 = llvm.add %239, %238  : i64
    llvm.br ^bb13(%254 : i64)
  ^bb18:  // pred: ^bb13
    %255 = llvm.mlir.constant(1 : index) : i64
    %256 = llvm.mlir.constant(1 : index) : i64
    %257 = llvm.mlir.constant(2 : index) : i64
    %258 = llvm.mlir.constant(1 : index) : i64
    %259 = llvm.mlir.constant(1 : index) : i64
    %260 = llvm.mlir.constant(2 : index) : i64
    %261 = llvm.mlir.constant(2 : index) : i64
    %262 = llvm.mlir.null : !llvm.ptr<i32>
    %263 = llvm.getelementptr %262[%261] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %264 = llvm.ptrtoint %263 : !llvm.ptr<i32> to i64
    %265 = llvm.mlir.constant(16 : index) : i64
    %266 = llvm.add %264, %265  : i64
    %267 = llvm.call @malloc(%266) : (i64) -> !llvm.ptr<i8>
    %268 = llvm.bitcast %267 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %269 = llvm.ptrtoint %268 : !llvm.ptr<i32> to i64
    %270 = llvm.mlir.constant(1 : index) : i64
    %271 = llvm.sub %265, %270  : i64
    %272 = llvm.add %269, %271  : i64
    %273 = llvm.urem %272, %265  : i64
    %274 = llvm.sub %272, %273  : i64
    %275 = llvm.inttoptr %274 : i64 to !llvm.ptr<i32>
    %276 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %277 = llvm.insertvalue %268, %276[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %278 = llvm.insertvalue %275, %277[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %279 = llvm.mlir.constant(0 : index) : i64
    %280 = llvm.insertvalue %279, %278[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %281 = llvm.insertvalue %255, %280[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %282 = llvm.insertvalue %256, %281[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %283 = llvm.insertvalue %257, %282[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %284 = llvm.insertvalue %258, %283[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %285 = llvm.insertvalue %260, %284[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %286 = llvm.insertvalue %257, %285[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %287 = llvm.insertvalue %258, %286[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %288 = llvm.insertvalue %259, %287[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %289 = llvm.mlir.constant(0 : index) : i64
    %290 = llvm.mlir.constant(1 : index) : i64
    %291 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb19(%289 : i64)
  ^bb19(%292: i64):  // 2 preds: ^bb18, ^bb29
    %293 = llvm.icmp "slt" %292, %290 : i64
    llvm.cond_br %293, ^bb20, ^bb30
  ^bb20:  // pred: ^bb19
    %294 = llvm.mlir.constant(0 : index) : i64
    %295 = llvm.mlir.constant(1 : index) : i64
    %296 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb21(%294 : i64)
  ^bb21(%297: i64):  // 2 preds: ^bb20, ^bb28
    %298 = llvm.icmp "slt" %297, %295 : i64
    llvm.cond_br %298, ^bb22, ^bb29
  ^bb22:  // pred: ^bb21
    %299 = llvm.mlir.constant(0 : index) : i64
    %300 = llvm.mlir.constant(2 : index) : i64
    %301 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb23(%299 : i64)
  ^bb23(%302: i64):  // 2 preds: ^bb22, ^bb27
    %303 = llvm.icmp "slt" %302, %300 : i64
    llvm.cond_br %303, ^bb24, ^bb28
  ^bb24:  // pred: ^bb23
    %304 = llvm.mlir.constant(0 : index) : i64
    %305 = llvm.mlir.constant(1 : index) : i64
    %306 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb25(%304 : i64)
  ^bb25(%307: i64):  // 2 preds: ^bb24, ^bb26
    %308 = llvm.icmp "slt" %307, %305 : i64
    llvm.cond_br %308, ^bb26, ^bb27
  ^bb26:  // pred: ^bb25
    %309 = llvm.extractvalue %29[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %310 = llvm.mlir.constant(2 : index) : i64
    %311 = llvm.mul %292, %310  : i64
    %312 = llvm.mlir.constant(2 : index) : i64
    %313 = llvm.mul %297, %312  : i64
    %314 = llvm.add %311, %313  : i64
    %315 = llvm.add %314, %302  : i64
    %316 = llvm.add %315, %307  : i64
    %317 = llvm.getelementptr %309[%316] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %318 = llvm.load %317 : !llvm.ptr<i1>
    %319 = llvm.extractvalue %17[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %320 = llvm.mlir.constant(2 : index) : i64
    %321 = llvm.mul %297, %320  : i64
    %322 = llvm.add %321, %302  : i64
    %323 = llvm.add %322, %307  : i64
    %324 = llvm.getelementptr %319[%323] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %325 = llvm.load %324 : !llvm.ptr<i32>
    %326 = llvm.extractvalue %7[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %327 = llvm.add %32, %307  : i64
    %328 = llvm.getelementptr %326[%327] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %329 = llvm.load %328 : !llvm.ptr<i32>
    %330 = llvm.select %318, %325, %329 : i1, i32
    %331 = llvm.extractvalue %288[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %332 = llvm.mlir.constant(2 : index) : i64
    %333 = llvm.mul %292, %332  : i64
    %334 = llvm.mlir.constant(2 : index) : i64
    %335 = llvm.mul %297, %334  : i64
    %336 = llvm.add %333, %335  : i64
    %337 = llvm.add %336, %302  : i64
    %338 = llvm.add %337, %307  : i64
    %339 = llvm.getelementptr %331[%338] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %330, %339 : !llvm.ptr<i32>
    %340 = llvm.add %307, %306  : i64
    llvm.br ^bb25(%340 : i64)
  ^bb27:  // pred: ^bb25
    %341 = llvm.add %302, %301  : i64
    llvm.br ^bb23(%341 : i64)
  ^bb28:  // pred: ^bb23
    %342 = llvm.add %297, %296  : i64
    llvm.br ^bb21(%342 : i64)
  ^bb29:  // pred: ^bb21
    %343 = llvm.add %292, %291  : i64
    llvm.br ^bb19(%343 : i64)
  ^bb30:  // pred: ^bb19
    %344 = llvm.mlir.constant(1 : index) : i64
    %345 = llvm.mlir.constant(1 : index) : i64
    %346 = llvm.mlir.constant(2 : index) : i64
    %347 = llvm.mlir.constant(1 : index) : i64
    %348 = llvm.mlir.constant(1 : index) : i64
    %349 = llvm.mlir.constant(2 : index) : i64
    %350 = llvm.mlir.constant(2 : index) : i64
    %351 = llvm.mlir.null : !llvm.ptr<i64>
    %352 = llvm.getelementptr %351[%350] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %353 = llvm.ptrtoint %352 : !llvm.ptr<i64> to i64
    %354 = llvm.mlir.constant(16 : index) : i64
    %355 = llvm.add %353, %354  : i64
    %356 = llvm.call @malloc(%355) : (i64) -> !llvm.ptr<i8>
    %357 = llvm.bitcast %356 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %358 = llvm.ptrtoint %357 : !llvm.ptr<i64> to i64
    %359 = llvm.mlir.constant(1 : index) : i64
    %360 = llvm.sub %354, %359  : i64
    %361 = llvm.add %358, %360  : i64
    %362 = llvm.urem %361, %354  : i64
    %363 = llvm.sub %361, %362  : i64
    %364 = llvm.inttoptr %363 : i64 to !llvm.ptr<i64>
    %365 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>
    %366 = llvm.insertvalue %357, %365[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %367 = llvm.insertvalue %364, %366[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %368 = llvm.mlir.constant(0 : index) : i64
    %369 = llvm.insertvalue %368, %367[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %370 = llvm.insertvalue %344, %369[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %371 = llvm.insertvalue %345, %370[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %372 = llvm.insertvalue %346, %371[3, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %373 = llvm.insertvalue %347, %372[3, 3] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %374 = llvm.insertvalue %349, %373[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %375 = llvm.insertvalue %346, %374[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %376 = llvm.insertvalue %347, %375[4, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %377 = llvm.insertvalue %348, %376[4, 3] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %378 = llvm.mlir.constant(0 : index) : i64
    %379 = llvm.mlir.constant(1 : index) : i64
    %380 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb31(%378 : i64)
  ^bb31(%381: i64):  // 2 preds: ^bb30, ^bb41
    %382 = llvm.icmp "slt" %381, %379 : i64
    llvm.cond_br %382, ^bb32, ^bb42
  ^bb32:  // pred: ^bb31
    %383 = llvm.mlir.constant(0 : index) : i64
    %384 = llvm.mlir.constant(1 : index) : i64
    %385 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb33(%383 : i64)
  ^bb33(%386: i64):  // 2 preds: ^bb32, ^bb40
    %387 = llvm.icmp "slt" %386, %384 : i64
    llvm.cond_br %387, ^bb34, ^bb41
  ^bb34:  // pred: ^bb33
    %388 = llvm.mlir.constant(0 : index) : i64
    %389 = llvm.mlir.constant(2 : index) : i64
    %390 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb35(%388 : i64)
  ^bb35(%391: i64):  // 2 preds: ^bb34, ^bb39
    %392 = llvm.icmp "slt" %391, %389 : i64
    llvm.cond_br %392, ^bb36, ^bb40
  ^bb36:  // pred: ^bb35
    %393 = llvm.mlir.constant(0 : index) : i64
    %394 = llvm.mlir.constant(1 : index) : i64
    %395 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb37(%393 : i64)
  ^bb37(%396: i64):  // 2 preds: ^bb36, ^bb38
    %397 = llvm.icmp "slt" %396, %394 : i64
    llvm.cond_br %397, ^bb38, ^bb39
  ^bb38:  // pred: ^bb37
    %398 = llvm.extractvalue %288[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %399 = llvm.mlir.constant(2 : index) : i64
    %400 = llvm.mul %381, %399  : i64
    %401 = llvm.mlir.constant(2 : index) : i64
    %402 = llvm.mul %386, %401  : i64
    %403 = llvm.add %400, %402  : i64
    %404 = llvm.add %403, %391  : i64
    %405 = llvm.add %404, %396  : i64
    %406 = llvm.getelementptr %398[%405] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %407 = llvm.load %406 : !llvm.ptr<i32>
    %408 = llvm.sext %407 : i32 to i64
    %409 = llvm.extractvalue %377[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %410 = llvm.mlir.constant(2 : index) : i64
    %411 = llvm.mul %381, %410  : i64
    %412 = llvm.mlir.constant(2 : index) : i64
    %413 = llvm.mul %386, %412  : i64
    %414 = llvm.add %411, %413  : i64
    %415 = llvm.add %414, %391  : i64
    %416 = llvm.add %415, %396  : i64
    %417 = llvm.getelementptr %409[%416] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %408, %417 : !llvm.ptr<i64>
    %418 = llvm.add %396, %395  : i64
    llvm.br ^bb37(%418 : i64)
  ^bb39:  // pred: ^bb37
    %419 = llvm.add %391, %390  : i64
    llvm.br ^bb35(%419 : i64)
  ^bb40:  // pred: ^bb35
    %420 = llvm.add %386, %385  : i64
    llvm.br ^bb33(%420 : i64)
  ^bb41:  // pred: ^bb33
    %421 = llvm.add %381, %380  : i64
    llvm.br ^bb31(%421 : i64)
  ^bb42:  // pred: ^bb31
    %422 = llvm.mlir.constant(1 : index) : i64
    %423 = llvm.mlir.constant(2 : index) : i64
    %424 = llvm.mlir.constant(1 : index) : i64
    %425 = llvm.mlir.constant(1 : index) : i64
    %426 = llvm.mlir.constant(2 : index) : i64
    %427 = llvm.mlir.null : !llvm.ptr<i64>
    %428 = llvm.getelementptr %427[%426] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %429 = llvm.ptrtoint %428 : !llvm.ptr<i64> to i64
    %430 = llvm.mlir.constant(16 : index) : i64
    %431 = llvm.add %429, %430  : i64
    %432 = llvm.call @malloc(%431) : (i64) -> !llvm.ptr<i8>
    %433 = llvm.bitcast %432 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %434 = llvm.ptrtoint %433 : !llvm.ptr<i64> to i64
    %435 = llvm.mlir.constant(1 : index) : i64
    %436 = llvm.sub %430, %435  : i64
    %437 = llvm.add %434, %436  : i64
    %438 = llvm.urem %437, %430  : i64
    %439 = llvm.sub %437, %438  : i64
    %440 = llvm.inttoptr %439 : i64 to !llvm.ptr<i64>
    %441 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>
    %442 = llvm.insertvalue %433, %441[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %443 = llvm.insertvalue %440, %442[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %444 = llvm.mlir.constant(0 : index) : i64
    %445 = llvm.insertvalue %444, %443[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %446 = llvm.insertvalue %422, %445[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %447 = llvm.insertvalue %423, %446[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %448 = llvm.insertvalue %424, %447[3, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %449 = llvm.insertvalue %423, %448[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %450 = llvm.insertvalue %424, %449[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %451 = llvm.insertvalue %425, %450[4, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %452 = llvm.mlir.constant(0 : index) : i64
    %453 = llvm.mlir.constant(1 : index) : i64
    %454 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb43(%452 : i64)
  ^bb43(%455: i64):  // 2 preds: ^bb42, ^bb50
    %456 = llvm.icmp "slt" %455, %453 : i64
    llvm.cond_br %456, ^bb44, ^bb51
  ^bb44:  // pred: ^bb43
    %457 = llvm.mlir.constant(0 : index) : i64
    %458 = llvm.mlir.constant(2 : index) : i64
    %459 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb45(%457 : i64)
  ^bb45(%460: i64):  // 2 preds: ^bb44, ^bb49
    %461 = llvm.icmp "slt" %460, %458 : i64
    llvm.cond_br %461, ^bb46, ^bb50
  ^bb46:  // pred: ^bb45
    %462 = llvm.mlir.constant(0 : index) : i64
    %463 = llvm.mlir.constant(1 : index) : i64
    %464 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb47(%462 : i64)
  ^bb47(%465: i64):  // 2 preds: ^bb46, ^bb48
    %466 = llvm.icmp "slt" %465, %463 : i64
    llvm.cond_br %466, ^bb48, ^bb49
  ^bb48:  // pred: ^bb47
    %467 = llvm.extractvalue %451[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %468 = llvm.mlir.constant(2 : index) : i64
    %469 = llvm.mul %455, %468  : i64
    %470 = llvm.add %469, %460  : i64
    %471 = llvm.add %470, %465  : i64
    %472 = llvm.getelementptr %467[%471] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %31, %472 : !llvm.ptr<i64>
    %473 = llvm.add %465, %464  : i64
    llvm.br ^bb47(%473 : i64)
  ^bb49:  // pred: ^bb47
    %474 = llvm.add %460, %459  : i64
    llvm.br ^bb45(%474 : i64)
  ^bb50:  // pred: ^bb45
    %475 = llvm.add %455, %454  : i64
    llvm.br ^bb43(%475 : i64)
  ^bb51:  // pred: ^bb43
    %476 = llvm.mlir.constant(0 : index) : i64
    %477 = llvm.mlir.constant(1 : index) : i64
    %478 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb52(%476 : i64)
  ^bb52(%479: i64):  // 2 preds: ^bb51, ^bb62
    %480 = llvm.icmp "slt" %479, %477 : i64
    llvm.cond_br %480, ^bb53, ^bb63
  ^bb53:  // pred: ^bb52
    %481 = llvm.mlir.constant(0 : index) : i64
    %482 = llvm.mlir.constant(1 : index) : i64
    %483 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb54(%481 : i64)
  ^bb54(%484: i64):  // 2 preds: ^bb53, ^bb61
    %485 = llvm.icmp "slt" %484, %482 : i64
    llvm.cond_br %485, ^bb55, ^bb62
  ^bb55:  // pred: ^bb54
    %486 = llvm.mlir.constant(0 : index) : i64
    %487 = llvm.mlir.constant(2 : index) : i64
    %488 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb56(%486 : i64)
  ^bb56(%489: i64):  // 2 preds: ^bb55, ^bb60
    %490 = llvm.icmp "slt" %489, %487 : i64
    llvm.cond_br %490, ^bb57, ^bb61
  ^bb57:  // pred: ^bb56
    %491 = llvm.mlir.constant(0 : index) : i64
    %492 = llvm.mlir.constant(1 : index) : i64
    %493 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb58(%491 : i64)
  ^bb58(%494: i64):  // 2 preds: ^bb57, ^bb59
    %495 = llvm.icmp "slt" %494, %492 : i64
    llvm.cond_br %495, ^bb59, ^bb60
  ^bb59:  // pred: ^bb58
    %496 = llvm.extractvalue %377[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %497 = llvm.mlir.constant(2 : index) : i64
    %498 = llvm.mul %479, %497  : i64
    %499 = llvm.mlir.constant(2 : index) : i64
    %500 = llvm.mul %484, %499  : i64
    %501 = llvm.add %498, %500  : i64
    %502 = llvm.add %501, %489  : i64
    %503 = llvm.add %502, %494  : i64
    %504 = llvm.getelementptr %496[%503] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %505 = llvm.load %504 : !llvm.ptr<i64>
    %506 = llvm.extractvalue %451[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %507 = llvm.mlir.constant(2 : index) : i64
    %508 = llvm.mul %484, %507  : i64
    %509 = llvm.add %508, %489  : i64
    %510 = llvm.add %509, %494  : i64
    %511 = llvm.getelementptr %506[%510] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %512 = llvm.load %511 : !llvm.ptr<i64>
    %513 = llvm.add %512, %505  : i64
    %514 = llvm.extractvalue %451[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %515 = llvm.mlir.constant(2 : index) : i64
    %516 = llvm.mul %484, %515  : i64
    %517 = llvm.add %516, %489  : i64
    %518 = llvm.add %517, %494  : i64
    %519 = llvm.getelementptr %514[%518] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %513, %519 : !llvm.ptr<i64>
    %520 = llvm.add %494, %493  : i64
    llvm.br ^bb58(%520 : i64)
  ^bb60:  // pred: ^bb58
    %521 = llvm.add %489, %488  : i64
    llvm.br ^bb56(%521 : i64)
  ^bb61:  // pred: ^bb56
    %522 = llvm.add %484, %483  : i64
    llvm.br ^bb54(%522 : i64)
  ^bb62:  // pred: ^bb54
    %523 = llvm.add %479, %478  : i64
    llvm.br ^bb52(%523 : i64)
  ^bb63:  // pred: ^bb52
    %524 = llvm.mlir.constant(1 : index) : i64
    %525 = llvm.mlir.constant(2 : index) : i64
    %526 = llvm.mlir.constant(1 : index) : i64
    %527 = llvm.mlir.constant(2 : index) : i64
    %528 = llvm.mlir.null : !llvm.ptr<i64>
    %529 = llvm.getelementptr %528[%527] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %530 = llvm.ptrtoint %529 : !llvm.ptr<i64> to i64
    %531 = llvm.mlir.constant(16 : index) : i64
    %532 = llvm.add %530, %531  : i64
    %533 = llvm.call @malloc(%532) : (i64) -> !llvm.ptr<i8>
    %534 = llvm.bitcast %533 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %535 = llvm.ptrtoint %534 : !llvm.ptr<i64> to i64
    %536 = llvm.mlir.constant(1 : index) : i64
    %537 = llvm.sub %531, %536  : i64
    %538 = llvm.add %535, %537  : i64
    %539 = llvm.urem %538, %531  : i64
    %540 = llvm.sub %538, %539  : i64
    %541 = llvm.inttoptr %540 : i64 to !llvm.ptr<i64>
    %542 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)>
    %543 = llvm.insertvalue %534, %542[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %544 = llvm.insertvalue %541, %543[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %545 = llvm.mlir.constant(0 : index) : i64
    %546 = llvm.insertvalue %545, %544[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %547 = llvm.insertvalue %524, %546[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %548 = llvm.insertvalue %525, %547[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %549 = llvm.insertvalue %525, %548[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %550 = llvm.insertvalue %526, %549[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %551 = llvm.mlir.constant(0 : index) : i64
    %552 = llvm.mlir.constant(1 : index) : i64
    %553 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb64(%551 : i64)
  ^bb64(%554: i64):  // 2 preds: ^bb63, ^bb68
    %555 = llvm.icmp "slt" %554, %552 : i64
    llvm.cond_br %555, ^bb65, ^bb69
  ^bb65:  // pred: ^bb64
    %556 = llvm.mlir.constant(0 : index) : i64
    %557 = llvm.mlir.constant(2 : index) : i64
    %558 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb66(%556 : i64)
  ^bb66(%559: i64):  // 2 preds: ^bb65, ^bb67
    %560 = llvm.icmp "slt" %559, %557 : i64
    llvm.cond_br %560, ^bb67, ^bb68
  ^bb67:  // pred: ^bb66
    %561 = llvm.extractvalue %550[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %562 = llvm.mlir.constant(2 : index) : i64
    %563 = llvm.mul %554, %562  : i64
    %564 = llvm.add %563, %559  : i64
    %565 = llvm.getelementptr %561[%564] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %31, %565 : !llvm.ptr<i64>
    %566 = llvm.add %559, %558  : i64
    llvm.br ^bb66(%566 : i64)
  ^bb68:  // pred: ^bb66
    %567 = llvm.add %554, %553  : i64
    llvm.br ^bb64(%567 : i64)
  ^bb69:  // pred: ^bb64
    %568 = llvm.mlir.constant(0 : index) : i64
    %569 = llvm.mlir.constant(1 : index) : i64
    %570 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb70(%568 : i64)
  ^bb70(%571: i64):  // 2 preds: ^bb69, ^bb77
    %572 = llvm.icmp "slt" %571, %569 : i64
    llvm.cond_br %572, ^bb71, ^bb78
  ^bb71:  // pred: ^bb70
    %573 = llvm.mlir.constant(0 : index) : i64
    %574 = llvm.mlir.constant(2 : index) : i64
    %575 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb72(%573 : i64)
  ^bb72(%576: i64):  // 2 preds: ^bb71, ^bb76
    %577 = llvm.icmp "slt" %576, %574 : i64
    llvm.cond_br %577, ^bb73, ^bb77
  ^bb73:  // pred: ^bb72
    %578 = llvm.mlir.constant(0 : index) : i64
    %579 = llvm.mlir.constant(1 : index) : i64
    %580 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb74(%578 : i64)
  ^bb74(%581: i64):  // 2 preds: ^bb73, ^bb75
    %582 = llvm.icmp "slt" %581, %579 : i64
    llvm.cond_br %582, ^bb75, ^bb76
  ^bb75:  // pred: ^bb74
    %583 = llvm.extractvalue %451[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %584 = llvm.mlir.constant(2 : index) : i64
    %585 = llvm.mul %571, %584  : i64
    %586 = llvm.add %585, %576  : i64
    %587 = llvm.add %586, %581  : i64
    %588 = llvm.getelementptr %583[%587] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %589 = llvm.load %588 : !llvm.ptr<i64>
    %590 = llvm.extractvalue %550[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %591 = llvm.mlir.constant(2 : index) : i64
    %592 = llvm.mul %571, %591  : i64
    %593 = llvm.add %592, %576  : i64
    %594 = llvm.getelementptr %590[%593] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %595 = llvm.load %594 : !llvm.ptr<i64>
    %596 = llvm.add %595, %589  : i64
    %597 = llvm.extractvalue %550[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %598 = llvm.mlir.constant(2 : index) : i64
    %599 = llvm.mul %571, %598  : i64
    %600 = llvm.add %599, %576  : i64
    %601 = llvm.getelementptr %597[%600] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %596, %601 : !llvm.ptr<i64>
    %602 = llvm.add %581, %580  : i64
    llvm.br ^bb74(%602 : i64)
  ^bb76:  // pred: ^bb74
    %603 = llvm.add %576, %575  : i64
    llvm.br ^bb72(%603 : i64)
  ^bb77:  // pred: ^bb72
    %604 = llvm.add %571, %570  : i64
    llvm.br ^bb70(%604 : i64)
  ^bb78:  // pred: ^bb70
    %605 = llvm.mlir.constant(2 : index) : i64
    %606 = llvm.mlir.constant(1 : index) : i64
    %607 = llvm.mlir.null : !llvm.ptr<i64>
    %608 = llvm.getelementptr %607[%605] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %609 = llvm.ptrtoint %608 : !llvm.ptr<i64> to i64
    %610 = llvm.mlir.constant(16 : index) : i64
    %611 = llvm.add %609, %610  : i64
    %612 = llvm.call @malloc(%611) : (i64) -> !llvm.ptr<i8>
    %613 = llvm.bitcast %612 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %614 = llvm.ptrtoint %613 : !llvm.ptr<i64> to i64
    %615 = llvm.mlir.constant(1 : index) : i64
    %616 = llvm.sub %610, %615  : i64
    %617 = llvm.add %614, %616  : i64
    %618 = llvm.urem %617, %610  : i64
    %619 = llvm.sub %617, %618  : i64
    %620 = llvm.inttoptr %619 : i64 to !llvm.ptr<i64>
    %621 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %622 = llvm.insertvalue %613, %621[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %623 = llvm.insertvalue %620, %622[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %624 = llvm.mlir.constant(0 : index) : i64
    %625 = llvm.insertvalue %624, %623[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %626 = llvm.insertvalue %605, %625[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %627 = llvm.insertvalue %606, %626[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %628 = llvm.mlir.constant(0 : index) : i64
    %629 = llvm.mlir.constant(2 : index) : i64
    %630 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb79(%628 : i64)
  ^bb79(%631: i64):  // 2 preds: ^bb78, ^bb80
    %632 = llvm.icmp "slt" %631, %629 : i64
    llvm.cond_br %632, ^bb80, ^bb81
  ^bb80:  // pred: ^bb79
    %633 = llvm.extractvalue %627[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %634 = llvm.getelementptr %633[%631] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %30, %634 : !llvm.ptr<i64>
    %635 = llvm.add %631, %630  : i64
    llvm.br ^bb79(%635 : i64)
  ^bb81:  // pred: ^bb79
    %636 = llvm.mlir.constant(0 : index) : i64
    %637 = llvm.mlir.constant(1 : index) : i64
    %638 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb82(%636 : i64)
  ^bb82(%639: i64):  // 2 preds: ^bb81, ^bb86
    %640 = llvm.icmp "slt" %639, %637 : i64
    llvm.cond_br %640, ^bb83, ^bb87
  ^bb83:  // pred: ^bb82
    %641 = llvm.mlir.constant(0 : index) : i64
    %642 = llvm.mlir.constant(2 : index) : i64
    %643 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb84(%641 : i64)
  ^bb84(%644: i64):  // 2 preds: ^bb83, ^bb85
    %645 = llvm.icmp "slt" %644, %642 : i64
    llvm.cond_br %645, ^bb85, ^bb86
  ^bb85:  // pred: ^bb84
    %646 = llvm.extractvalue %550[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<2 x i64>, array<2 x i64>)> 
    %647 = llvm.mlir.constant(2 : index) : i64
    %648 = llvm.mul %639, %647  : i64
    %649 = llvm.add %648, %644  : i64
    %650 = llvm.getelementptr %646[%649] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %651 = llvm.load %650 : !llvm.ptr<i64>
    %652 = llvm.extractvalue %627[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %653 = llvm.getelementptr %652[%644] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %654 = llvm.load %653 : !llvm.ptr<i64>
    %655 = llvm.icmp "sgt" %654, %651 : i64
    %656 = llvm.select %655, %654, %651 : i1, i64
    %657 = llvm.extractvalue %627[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %658 = llvm.getelementptr %657[%644] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %656, %658 : !llvm.ptr<i64>
    %659 = llvm.add %644, %643  : i64
    llvm.br ^bb84(%659 : i64)
  ^bb86:  // pred: ^bb84
    %660 = llvm.add %639, %638  : i64
    llvm.br ^bb82(%660 : i64)
  ^bb87:  // pred: ^bb82
    %661 = llvm.mlir.undef : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>)>
    %662 = llvm.insertvalue %235, %661[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>)> 
    %663 = llvm.insertvalue %627, %662[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>)> 
    llvm.return %663 : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>>, %arg2: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>>, %arg3: !llvm.ptr<struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>>) attributes {input_names = ["v5_0", "v4_0", "v3_0"], llvm.emit_c_interface, output_names = ["v0_0", "v7_0"]} {
    %0 = llvm.load %arg1 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>>
    %1 = llvm.extractvalue %0[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %2 = llvm.extractvalue %0[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %3 = llvm.extractvalue %0[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %4 = llvm.extractvalue %0[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %5 = llvm.extractvalue %0[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %6 = llvm.extractvalue %0[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %7 = llvm.extractvalue %0[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %8 = llvm.load %arg2 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>>
    %9 = llvm.extractvalue %8[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %10 = llvm.extractvalue %8[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %11 = llvm.extractvalue %8[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %12 = llvm.extractvalue %8[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %13 = llvm.extractvalue %8[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %14 = llvm.extractvalue %8[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %15 = llvm.extractvalue %8[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %16 = llvm.extractvalue %8[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %17 = llvm.extractvalue %8[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %18 = llvm.load %arg3 : !llvm.ptr<struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>>
    %19 = llvm.extractvalue %18[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %20 = llvm.extractvalue %18[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %21 = llvm.extractvalue %18[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %22 = llvm.extractvalue %18[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %23 = llvm.extractvalue %18[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %24 = llvm.extractvalue %18[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %25 = llvm.extractvalue %18[3, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %26 = llvm.extractvalue %18[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %27 = llvm.extractvalue %18[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %28 = llvm.extractvalue %18[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %29 = llvm.extractvalue %18[4, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %30 = llvm.call @main_graph(%1, %2, %3, %4, %5, %6, %7, %9, %10, %11, %12, %13, %14, %15, %16, %17, %19, %20, %21, %22, %23, %24, %25, %26, %27, %28, %29) : (!llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, !llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, !llvm.ptr<i1>, !llvm.ptr<i1>, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>)>
    llvm.store %30, %arg0 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>)>>
    llvm.return
  }
  llvm.func @run_main_graph(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.call @omTensorListGetOmtArray(%arg0) : (!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.alloca %1 x !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>)> : (i64) -> !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>)>>
    %3 = llvm.mlir.constant(0 : i64) : i64
    %4 = llvm.getelementptr %0[%3] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    %5 = llvm.load %4 : !llvm.ptr<ptr<i8>>
    %6 = llvm.alloca %1 x !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> : (i64) -> !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>>
    %7 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>
    %8 = llvm.call @omTensorGetDataPtr(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i8>
    %9 = llvm.bitcast %8 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %10 = llvm.insertvalue %9, %7[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %11 = llvm.insertvalue %9, %10[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %12 = llvm.mlir.constant(0 : i64) : i64
    %13 = llvm.insertvalue %12, %11[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %14 = llvm.call @omTensorGetShape(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %15 = llvm.call @omTensorGetStrides(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %16 = llvm.mlir.constant(0 : i64) : i64
    %17 = llvm.getelementptr %14[%16] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %18 = llvm.load %17 : !llvm.ptr<i64>
    %19 = llvm.insertvalue %18, %13[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %20 = llvm.getelementptr %15[%16] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %21 = llvm.load %20 : !llvm.ptr<i64>
    %22 = llvm.insertvalue %21, %19[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %23 = llvm.mlir.constant(1 : i64) : i64
    %24 = llvm.getelementptr %14[%23] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %25 = llvm.load %24 : !llvm.ptr<i64>
    %26 = llvm.insertvalue %25, %22[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %27 = llvm.getelementptr %15[%23] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %28 = llvm.load %27 : !llvm.ptr<i64>
    %29 = llvm.insertvalue %28, %26[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    llvm.store %29, %6 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>>
    %30 = llvm.mlir.constant(1 : i64) : i64
    %31 = llvm.getelementptr %0[%30] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    %32 = llvm.load %31 : !llvm.ptr<ptr<i8>>
    %33 = llvm.alloca %1 x !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> : (i64) -> !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>>
    %34 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>
    %35 = llvm.call @omTensorGetDataPtr(%32) : (!llvm.ptr<i8>) -> !llvm.ptr<i8>
    %36 = llvm.bitcast %35 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %37 = llvm.insertvalue %36, %34[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %38 = llvm.insertvalue %36, %37[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %39 = llvm.mlir.constant(0 : i64) : i64
    %40 = llvm.insertvalue %39, %38[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %41 = llvm.call @omTensorGetShape(%32) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %42 = llvm.call @omTensorGetStrides(%32) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %43 = llvm.mlir.constant(0 : i64) : i64
    %44 = llvm.getelementptr %41[%43] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %45 = llvm.load %44 : !llvm.ptr<i64>
    %46 = llvm.insertvalue %45, %40[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %47 = llvm.getelementptr %42[%43] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %48 = llvm.load %47 : !llvm.ptr<i64>
    %49 = llvm.insertvalue %48, %46[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %50 = llvm.mlir.constant(1 : i64) : i64
    %51 = llvm.getelementptr %41[%50] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %52 = llvm.load %51 : !llvm.ptr<i64>
    %53 = llvm.insertvalue %52, %49[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %54 = llvm.getelementptr %42[%50] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %55 = llvm.load %54 : !llvm.ptr<i64>
    %56 = llvm.insertvalue %55, %53[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %57 = llvm.mlir.constant(2 : i64) : i64
    %58 = llvm.getelementptr %41[%57] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %59 = llvm.load %58 : !llvm.ptr<i64>
    %60 = llvm.insertvalue %59, %56[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %61 = llvm.getelementptr %42[%57] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %62 = llvm.load %61 : !llvm.ptr<i64>
    %63 = llvm.insertvalue %62, %60[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    llvm.store %63, %33 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>>
    %64 = llvm.mlir.constant(2 : i64) : i64
    %65 = llvm.getelementptr %0[%64] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    %66 = llvm.load %65 : !llvm.ptr<ptr<i8>>
    %67 = llvm.alloca %1 x !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> : (i64) -> !llvm.ptr<struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>>
    %68 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>
    %69 = llvm.call @omTensorGetDataPtr(%66) : (!llvm.ptr<i8>) -> !llvm.ptr<i8>
    %70 = llvm.bitcast %69 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %71 = llvm.insertvalue %70, %68[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %72 = llvm.insertvalue %70, %71[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %73 = llvm.mlir.constant(0 : i64) : i64
    %74 = llvm.insertvalue %73, %72[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %75 = llvm.call @omTensorGetShape(%66) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %76 = llvm.call @omTensorGetStrides(%66) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %77 = llvm.mlir.constant(0 : i64) : i64
    %78 = llvm.getelementptr %75[%77] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %79 = llvm.load %78 : !llvm.ptr<i64>
    %80 = llvm.insertvalue %79, %74[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %81 = llvm.getelementptr %76[%77] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %82 = llvm.load %81 : !llvm.ptr<i64>
    %83 = llvm.insertvalue %82, %80[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %84 = llvm.mlir.constant(1 : i64) : i64
    %85 = llvm.getelementptr %75[%84] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %86 = llvm.load %85 : !llvm.ptr<i64>
    %87 = llvm.insertvalue %86, %83[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %88 = llvm.getelementptr %76[%84] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %89 = llvm.load %88 : !llvm.ptr<i64>
    %90 = llvm.insertvalue %89, %87[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %91 = llvm.mlir.constant(2 : i64) : i64
    %92 = llvm.getelementptr %75[%91] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %93 = llvm.load %92 : !llvm.ptr<i64>
    %94 = llvm.insertvalue %93, %90[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %95 = llvm.getelementptr %76[%91] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %96 = llvm.load %95 : !llvm.ptr<i64>
    %97 = llvm.insertvalue %96, %94[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %98 = llvm.mlir.constant(3 : i64) : i64
    %99 = llvm.getelementptr %75[%98] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %100 = llvm.load %99 : !llvm.ptr<i64>
    %101 = llvm.insertvalue %100, %97[3, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %102 = llvm.getelementptr %76[%98] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %103 = llvm.load %102 : !llvm.ptr<i64>
    %104 = llvm.insertvalue %103, %101[4, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    llvm.store %104, %67 : !llvm.ptr<struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>>
    llvm.call @_mlir_ciface_main_graph(%2, %6, %33, %67) : (!llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>>, !llvm.ptr<struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>>) -> ()
    %105 = llvm.load %2 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>)>>
    %106 = llvm.extractvalue %105[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>)> 
    %107 = llvm.extractvalue %105[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>)> 
    %108 = llvm.mlir.constant(2 : i64) : i64
    %109 = llvm.mlir.constant(16 : i64) : i64
    %110 = llvm.call @malloc(%109) : (i64) -> !llvm.ptr<i8>
    %111 = llvm.bitcast %110 : !llvm.ptr<i8> to !llvm.ptr<ptr<i8>>
    %112 = llvm.mlir.constant(2 : i64) : i64
    %113 = llvm.call @omTensorCreateUntyped(%112) : (i64) -> !llvm.ptr<i8>
    %114 = llvm.mlir.constant(1 : i64) : i64
    %115 = llvm.extractvalue %106[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %116 = llvm.bitcast %115 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %117 = llvm.extractvalue %106[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %118 = llvm.bitcast %117 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%113, %114, %116, %118) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %119 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%113, %119) : (!llvm.ptr<i8>, i64) -> ()
    %120 = llvm.call @omTensorGetShape(%113) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %121 = llvm.call @omTensorGetStrides(%113) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %122 = llvm.mlir.constant(0 : i64) : i64
    %123 = llvm.extractvalue %106[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %124 = llvm.getelementptr %120[%122] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %123, %124 : !llvm.ptr<i64>
    %125 = llvm.extractvalue %106[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %126 = llvm.getelementptr %121[%122] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %125, %126 : !llvm.ptr<i64>
    %127 = llvm.mlir.constant(1 : i64) : i64
    %128 = llvm.extractvalue %106[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %129 = llvm.getelementptr %120[%127] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %128, %129 : !llvm.ptr<i64>
    %130 = llvm.extractvalue %106[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %131 = llvm.getelementptr %121[%127] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %130, %131 : !llvm.ptr<i64>
    %132 = llvm.mlir.constant(0 : i64) : i64
    %133 = llvm.getelementptr %111[%132] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %113, %133 : !llvm.ptr<ptr<i8>>
    %134 = llvm.mlir.constant(1 : i64) : i64
    %135 = llvm.call @omTensorCreateUntyped(%134) : (i64) -> !llvm.ptr<i8>
    %136 = llvm.mlir.constant(1 : i64) : i64
    %137 = llvm.extractvalue %107[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %138 = llvm.bitcast %137 : !llvm.ptr<i64> to !llvm.ptr<i8>
    %139 = llvm.extractvalue %107[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %140 = llvm.bitcast %139 : !llvm.ptr<i64> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%135, %136, %138, %140) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %141 = llvm.mlir.constant(7 : i64) : i64
    llvm.call @omTensorSetDataType(%135, %141) : (!llvm.ptr<i8>, i64) -> ()
    %142 = llvm.call @omTensorGetShape(%135) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %143 = llvm.call @omTensorGetStrides(%135) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %144 = llvm.mlir.constant(0 : i64) : i64
    %145 = llvm.extractvalue %107[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %146 = llvm.getelementptr %142[%144] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %145, %146 : !llvm.ptr<i64>
    %147 = llvm.extractvalue %107[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %148 = llvm.getelementptr %143[%144] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %147, %148 : !llvm.ptr<i64>
    %149 = llvm.mlir.constant(1 : i64) : i64
    %150 = llvm.getelementptr %111[%149] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %135, %150 : !llvm.ptr<ptr<i8>>
    %151 = llvm.call @omTensorListCreate(%111, %108, %1) : (!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
    llvm.return %151 : !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_in_sig : !llvm.ptr<array<199 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<199 x i8>> to !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_out_sig : !llvm.ptr<array<121 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<121 x i8>> to !llvm.ptr<i8>
    llvm.return %8 : !llvm.ptr<i8>
  ^bb2:  // pred: ^bb0
    %9 = llvm.mlir.null : !llvm.ptr<i8>
    llvm.return %9 : !llvm.ptr<i8>
  }
}

