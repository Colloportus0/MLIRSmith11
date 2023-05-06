module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [1] , \22name\22 : \22v4_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v1_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22f64\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v2_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1] , \22name\22 : \22v6_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
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
  llvm.mlir.global internal constant @constant_6(dense<1> : tensor<4xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<4 x i64>
  llvm.mlir.global internal constant @constant_5(dense<-1> : tensor<i64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x i64>
  llvm.mlir.global internal constant @constant_4(dense<1> : tensor<4xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<4 x i64>
  llvm.mlir.global internal constant @constant_1(dense<1> : tensor<i32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x i32>
  llvm.mlir.global internal constant @constant_0(dense<-1> : tensor<i32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x i32>
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: !llvm.ptr<i32>, %arg6: !llvm.ptr<i32>, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: i64, %arg11: i64, %arg12: i64, %arg13: i64, %arg14: i64, %arg15: i64) -> !llvm.struct<(struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)> attributes {input_names = ["v4_0", "v1_0"], llvm.emit_c_interface, output_names = ["v2_0", "v6_0"]} {
    %0 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %1 = llvm.insertvalue %arg0, %0[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %2 = llvm.insertvalue %arg1, %1[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %3 = llvm.insertvalue %arg2, %2[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %4 = llvm.insertvalue %arg3, %3[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %5 = llvm.insertvalue %arg4, %4[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %6 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %7 = llvm.insertvalue %arg5, %6[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %8 = llvm.insertvalue %arg6, %7[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %9 = llvm.insertvalue %arg7, %8[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %10 = llvm.insertvalue %arg8, %9[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %11 = llvm.insertvalue %arg12, %10[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %12 = llvm.insertvalue %arg9, %11[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %13 = llvm.insertvalue %arg13, %12[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %14 = llvm.insertvalue %arg10, %13[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %15 = llvm.insertvalue %arg14, %14[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %16 = llvm.insertvalue %arg11, %15[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %17 = llvm.insertvalue %arg15, %16[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %18 = llvm.mlir.constant(1 : i64) : i64
    %19 = llvm.mlir.constant(0 : index) : i64
    %20 = llvm.mlir.addressof @constant_0 : !llvm.ptr<array<1 x i32>>
    %21 = llvm.bitcast %20 : !llvm.ptr<array<1 x i32>> to !llvm.ptr<i32>
    %22 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64)>
    %23 = llvm.insertvalue %21, %22[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %24 = llvm.insertvalue %21, %23[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %25 = llvm.mlir.constant(0 : index) : i64
    %26 = llvm.insertvalue %25, %24[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %27 = llvm.mlir.addressof @constant_1 : !llvm.ptr<array<1 x i32>>
    %28 = llvm.bitcast %27 : !llvm.ptr<array<1 x i32>> to !llvm.ptr<i32>
    %29 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64)>
    %30 = llvm.insertvalue %28, %29[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %31 = llvm.insertvalue %28, %30[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %32 = llvm.mlir.constant(0 : index) : i64
    %33 = llvm.insertvalue %32, %31[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %34 = llvm.mlir.addressof @constant_4 : !llvm.ptr<array<4 x i64>>
    %35 = llvm.bitcast %34 : !llvm.ptr<array<4 x i64>> to !llvm.ptr<i64>
    %36 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %37 = llvm.insertvalue %35, %36[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %38 = llvm.insertvalue %35, %37[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %39 = llvm.mlir.constant(0 : index) : i64
    %40 = llvm.insertvalue %39, %38[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %41 = llvm.mlir.constant(4 : index) : i64
    %42 = llvm.insertvalue %41, %40[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %43 = llvm.mlir.constant(1 : index) : i64
    %44 = llvm.insertvalue %43, %42[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %45 = llvm.mlir.addressof @constant_5 : !llvm.ptr<array<1 x i64>>
    %46 = llvm.bitcast %45 : !llvm.ptr<array<1 x i64>> to !llvm.ptr<i64>
    %47 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64)>
    %48 = llvm.insertvalue %46, %47[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %49 = llvm.insertvalue %46, %48[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %50 = llvm.mlir.constant(0 : index) : i64
    %51 = llvm.insertvalue %50, %49[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %52 = llvm.mlir.addressof @constant_6 : !llvm.ptr<array<4 x i64>>
    %53 = llvm.bitcast %52 : !llvm.ptr<array<4 x i64>> to !llvm.ptr<i64>
    %54 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %55 = llvm.insertvalue %53, %54[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %56 = llvm.insertvalue %53, %55[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %57 = llvm.mlir.constant(0 : index) : i64
    %58 = llvm.insertvalue %57, %56[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %59 = llvm.mlir.constant(4 : index) : i64
    %60 = llvm.insertvalue %59, %58[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %61 = llvm.mlir.constant(1 : index) : i64
    %62 = llvm.insertvalue %61, %60[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %63 = llvm.mlir.constant(1 : index) : i64
    %64 = llvm.mlir.constant(1 : index) : i64
    %65 = llvm.mlir.null : !llvm.ptr<i32>
    %66 = llvm.getelementptr %65[%63] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %67 = llvm.ptrtoint %66 : !llvm.ptr<i32> to i64
    %68 = llvm.mlir.constant(16 : index) : i64
    %69 = llvm.add %67, %68  : i64
    %70 = llvm.call @malloc(%69) : (i64) -> !llvm.ptr<i8>
    %71 = llvm.bitcast %70 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %72 = llvm.ptrtoint %71 : !llvm.ptr<i32> to i64
    %73 = llvm.mlir.constant(1 : index) : i64
    %74 = llvm.sub %68, %73  : i64
    %75 = llvm.add %72, %74  : i64
    %76 = llvm.urem %75, %68  : i64
    %77 = llvm.sub %75, %76  : i64
    %78 = llvm.inttoptr %77 : i64 to !llvm.ptr<i32>
    %79 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %80 = llvm.insertvalue %71, %79[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %81 = llvm.insertvalue %78, %80[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %82 = llvm.mlir.constant(0 : index) : i64
    %83 = llvm.insertvalue %82, %81[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %84 = llvm.insertvalue %63, %83[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %85 = llvm.insertvalue %64, %84[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %86 = llvm.mlir.constant(0 : index) : i64
    %87 = llvm.mlir.constant(1 : index) : i64
    %88 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%86 : i64)
  ^bb1(%89: i64):  // 2 preds: ^bb0, ^bb2
    %90 = llvm.icmp "slt" %89, %87 : i64
    llvm.cond_br %90, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    %91 = llvm.extractvalue %5[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %92 = llvm.getelementptr %91[%89] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %93 = llvm.load %92 : !llvm.ptr<i32>
    %94 = llvm.extractvalue %26[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %95 = llvm.load %94 : !llvm.ptr<i32>
    %96 = llvm.icmp "slt" %93, %95 : i32
    %97 = llvm.select %96, %95, %93 : i1, i32
    %98 = llvm.extractvalue %33[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %99 = llvm.load %98 : !llvm.ptr<i32>
    %100 = llvm.icmp "slt" %97, %99 : i32
    %101 = llvm.select %100, %97, %99 : i1, i32
    %102 = llvm.extractvalue %85[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %103 = llvm.getelementptr %102[%89] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %101, %103 : !llvm.ptr<i32>
    %104 = llvm.add %89, %88  : i64
    llvm.br ^bb1(%104 : i64)
  ^bb3:  // pred: ^bb1
    %105 = llvm.mlir.constant(1 : index) : i64
    %106 = llvm.mlir.constant(1 : index) : i64
    %107 = llvm.mlir.constant(1 : index) : i64
    %108 = llvm.mlir.constant(1 : index) : i64
    %109 = llvm.mlir.constant(1 : index) : i64
    %110 = llvm.mlir.null : !llvm.ptr<f64>
    %111 = llvm.getelementptr %110[%105] : (!llvm.ptr<f64>, i64) -> !llvm.ptr<f64>
    %112 = llvm.ptrtoint %111 : !llvm.ptr<f64> to i64
    %113 = llvm.mlir.constant(16 : index) : i64
    %114 = llvm.add %112, %113  : i64
    %115 = llvm.call @malloc(%114) : (i64) -> !llvm.ptr<i8>
    %116 = llvm.bitcast %115 : !llvm.ptr<i8> to !llvm.ptr<f64>
    %117 = llvm.ptrtoint %116 : !llvm.ptr<f64> to i64
    %118 = llvm.mlir.constant(1 : index) : i64
    %119 = llvm.sub %113, %118  : i64
    %120 = llvm.add %117, %119  : i64
    %121 = llvm.urem %120, %113  : i64
    %122 = llvm.sub %120, %121  : i64
    %123 = llvm.inttoptr %122 : i64 to !llvm.ptr<f64>
    %124 = llvm.mlir.undef : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>
    %125 = llvm.insertvalue %116, %124[0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %126 = llvm.insertvalue %123, %125[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %127 = llvm.mlir.constant(0 : index) : i64
    %128 = llvm.insertvalue %127, %126[2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %129 = llvm.insertvalue %105, %128[3, 0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %130 = llvm.insertvalue %106, %129[3, 1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %131 = llvm.insertvalue %107, %130[3, 2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %132 = llvm.insertvalue %108, %131[3, 3] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %133 = llvm.insertvalue %106, %132[4, 0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %134 = llvm.insertvalue %107, %133[4, 1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %135 = llvm.insertvalue %108, %134[4, 2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %136 = llvm.insertvalue %109, %135[4, 3] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %137 = llvm.mlir.constant(0 : index) : i64
    %138 = llvm.mlir.constant(1 : index) : i64
    %139 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb4(%137 : i64)
  ^bb4(%140: i64):  // 2 preds: ^bb3, ^bb14
    %141 = llvm.icmp "slt" %140, %138 : i64
    llvm.cond_br %141, ^bb5, ^bb15
  ^bb5:  // pred: ^bb4
    %142 = llvm.mlir.constant(0 : index) : i64
    %143 = llvm.mlir.constant(1 : index) : i64
    %144 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb6(%142 : i64)
  ^bb6(%145: i64):  // 2 preds: ^bb5, ^bb13
    %146 = llvm.icmp "slt" %145, %143 : i64
    llvm.cond_br %146, ^bb7, ^bb14
  ^bb7:  // pred: ^bb6
    %147 = llvm.mlir.constant(0 : index) : i64
    %148 = llvm.mlir.constant(1 : index) : i64
    %149 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb8(%147 : i64)
  ^bb8(%150: i64):  // 2 preds: ^bb7, ^bb12
    %151 = llvm.icmp "slt" %150, %148 : i64
    llvm.cond_br %151, ^bb9, ^bb13
  ^bb9:  // pred: ^bb8
    %152 = llvm.mlir.constant(0 : index) : i64
    %153 = llvm.mlir.constant(1 : index) : i64
    %154 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb10(%152 : i64)
  ^bb10(%155: i64):  // 2 preds: ^bb9, ^bb11
    %156 = llvm.icmp "slt" %155, %153 : i64
    llvm.cond_br %156, ^bb11, ^bb12
  ^bb11:  // pred: ^bb10
    %157 = llvm.extractvalue %17[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %158 = llvm.add %140, %145  : i64
    %159 = llvm.add %158, %150  : i64
    %160 = llvm.add %159, %155  : i64
    %161 = llvm.getelementptr %157[%160] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %162 = llvm.load %161 : !llvm.ptr<i32>
    %163 = llvm.sitofp %162 : i32 to f64
    %164 = llvm.extractvalue %136[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %165 = llvm.add %140, %145  : i64
    %166 = llvm.add %165, %150  : i64
    %167 = llvm.add %166, %155  : i64
    %168 = llvm.getelementptr %164[%167] : (!llvm.ptr<f64>, i64) -> !llvm.ptr<f64>
    llvm.store %163, %168 : !llvm.ptr<f64>
    %169 = llvm.add %155, %154  : i64
    llvm.br ^bb10(%169 : i64)
  ^bb12:  // pred: ^bb10
    %170 = llvm.add %150, %149  : i64
    llvm.br ^bb8(%170 : i64)
  ^bb13:  // pred: ^bb8
    %171 = llvm.add %145, %144  : i64
    llvm.br ^bb6(%171 : i64)
  ^bb14:  // pred: ^bb6
    %172 = llvm.add %140, %139  : i64
    llvm.br ^bb4(%172 : i64)
  ^bb15:  // pred: ^bb4
    %173 = llvm.mlir.constant(4 : index) : i64
    %174 = llvm.mlir.constant(1 : index) : i64
    %175 = llvm.mlir.null : !llvm.ptr<i64>
    %176 = llvm.getelementptr %175[%173] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %177 = llvm.ptrtoint %176 : !llvm.ptr<i64> to i64
    %178 = llvm.mlir.constant(16 : index) : i64
    %179 = llvm.add %177, %178  : i64
    %180 = llvm.call @malloc(%179) : (i64) -> !llvm.ptr<i8>
    %181 = llvm.bitcast %180 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %182 = llvm.ptrtoint %181 : !llvm.ptr<i64> to i64
    %183 = llvm.mlir.constant(1 : index) : i64
    %184 = llvm.sub %178, %183  : i64
    %185 = llvm.add %182, %184  : i64
    %186 = llvm.urem %185, %178  : i64
    %187 = llvm.sub %185, %186  : i64
    %188 = llvm.inttoptr %187 : i64 to !llvm.ptr<i64>
    %189 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %190 = llvm.insertvalue %181, %189[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %191 = llvm.insertvalue %188, %190[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %192 = llvm.mlir.constant(0 : index) : i64
    %193 = llvm.insertvalue %192, %191[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %194 = llvm.insertvalue %173, %193[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %195 = llvm.insertvalue %174, %194[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %196 = llvm.mlir.constant(0 : index) : i64
    %197 = llvm.mlir.constant(4 : index) : i64
    %198 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb16(%196 : i64)
  ^bb16(%199: i64):  // 2 preds: ^bb15, ^bb17
    %200 = llvm.icmp "slt" %199, %197 : i64
    llvm.cond_br %200, ^bb17, ^bb18
  ^bb17:  // pred: ^bb16
    %201 = llvm.extractvalue %195[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %202 = llvm.getelementptr %201[%199] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %18, %202 : !llvm.ptr<i64>
    %203 = llvm.add %199, %198  : i64
    llvm.br ^bb16(%203 : i64)
  ^bb18:  // pred: ^bb16
    %204 = llvm.mlir.constant(4 : index) : i64
    %205 = llvm.mlir.constant(1 : index) : i64
    %206 = llvm.mlir.null : !llvm.ptr<i64>
    %207 = llvm.getelementptr %206[%204] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %208 = llvm.ptrtoint %207 : !llvm.ptr<i64> to i64
    %209 = llvm.mlir.constant(16 : index) : i64
    %210 = llvm.add %208, %209  : i64
    %211 = llvm.call @malloc(%210) : (i64) -> !llvm.ptr<i8>
    %212 = llvm.bitcast %211 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %213 = llvm.ptrtoint %212 : !llvm.ptr<i64> to i64
    %214 = llvm.mlir.constant(1 : index) : i64
    %215 = llvm.sub %209, %214  : i64
    %216 = llvm.add %213, %215  : i64
    %217 = llvm.urem %216, %209  : i64
    %218 = llvm.sub %216, %217  : i64
    %219 = llvm.inttoptr %218 : i64 to !llvm.ptr<i64>
    %220 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %221 = llvm.insertvalue %212, %220[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %222 = llvm.insertvalue %219, %221[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %223 = llvm.mlir.constant(0 : index) : i64
    %224 = llvm.insertvalue %223, %222[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %225 = llvm.insertvalue %204, %224[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %226 = llvm.insertvalue %205, %225[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %227 = llvm.mlir.constant(0 : index) : i64
    %228 = llvm.mlir.constant(4 : index) : i64
    %229 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb19(%227 : i64)
  ^bb19(%230: i64):  // 2 preds: ^bb18, ^bb20
    %231 = llvm.icmp "slt" %230, %228 : i64
    llvm.cond_br %231, ^bb20, ^bb21
  ^bb20:  // pred: ^bb19
    %232 = llvm.extractvalue %195[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %233 = llvm.getelementptr %232[%230] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %234 = llvm.load %233 : !llvm.ptr<i64>
    %235 = llvm.extractvalue %51[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %236 = llvm.load %235 : !llvm.ptr<i64>
    %237 = llvm.mul %234, %236  : i64
    %238 = llvm.extractvalue %226[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %239 = llvm.getelementptr %238[%230] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %237, %239 : !llvm.ptr<i64>
    %240 = llvm.add %230, %229  : i64
    llvm.br ^bb19(%240 : i64)
  ^bb21:  // pred: ^bb19
    %241 = llvm.mlir.constant(4 : index) : i64
    %242 = llvm.mlir.constant(1 : index) : i64
    %243 = llvm.mlir.null : !llvm.ptr<i1>
    %244 = llvm.getelementptr %243[%241] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %245 = llvm.ptrtoint %244 : !llvm.ptr<i1> to i64
    %246 = llvm.mlir.constant(16 : index) : i64
    %247 = llvm.add %245, %246  : i64
    %248 = llvm.call @malloc(%247) : (i64) -> !llvm.ptr<i8>
    %249 = llvm.bitcast %248 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %250 = llvm.ptrtoint %249 : !llvm.ptr<i1> to i64
    %251 = llvm.mlir.constant(1 : index) : i64
    %252 = llvm.sub %246, %251  : i64
    %253 = llvm.add %250, %252  : i64
    %254 = llvm.urem %253, %246  : i64
    %255 = llvm.sub %253, %254  : i64
    %256 = llvm.inttoptr %255 : i64 to !llvm.ptr<i1>
    %257 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)>
    %258 = llvm.insertvalue %249, %257[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %259 = llvm.insertvalue %256, %258[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %260 = llvm.mlir.constant(0 : index) : i64
    %261 = llvm.insertvalue %260, %259[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %262 = llvm.insertvalue %241, %261[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %263 = llvm.insertvalue %242, %262[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %264 = llvm.mlir.constant(0 : index) : i64
    %265 = llvm.mlir.constant(4 : index) : i64
    %266 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb22(%264 : i64)
  ^bb22(%267: i64):  // 2 preds: ^bb21, ^bb23
    %268 = llvm.icmp "slt" %267, %265 : i64
    llvm.cond_br %268, ^bb23, ^bb24
  ^bb23:  // pred: ^bb22
    %269 = llvm.extractvalue %44[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %270 = llvm.getelementptr %269[%267] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %271 = llvm.load %270 : !llvm.ptr<i64>
    %272 = llvm.extractvalue %226[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %273 = llvm.getelementptr %272[%267] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %274 = llvm.load %273 : !llvm.ptr<i64>
    %275 = llvm.icmp "eq" %271, %274 : i64
    %276 = llvm.extractvalue %263[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %277 = llvm.getelementptr %276[%267] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %275, %277 : !llvm.ptr<i1>
    %278 = llvm.add %267, %266  : i64
    llvm.br ^bb22(%278 : i64)
  ^bb24:  // pred: ^bb22
    %279 = llvm.mlir.constant(4 : index) : i64
    %280 = llvm.mlir.constant(1 : index) : i64
    %281 = llvm.mlir.null : !llvm.ptr<i64>
    %282 = llvm.getelementptr %281[%279] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %283 = llvm.ptrtoint %282 : !llvm.ptr<i64> to i64
    %284 = llvm.mlir.constant(16 : index) : i64
    %285 = llvm.add %283, %284  : i64
    %286 = llvm.call @malloc(%285) : (i64) -> !llvm.ptr<i8>
    %287 = llvm.bitcast %286 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %288 = llvm.ptrtoint %287 : !llvm.ptr<i64> to i64
    %289 = llvm.mlir.constant(1 : index) : i64
    %290 = llvm.sub %284, %289  : i64
    %291 = llvm.add %288, %290  : i64
    %292 = llvm.urem %291, %284  : i64
    %293 = llvm.sub %291, %292  : i64
    %294 = llvm.inttoptr %293 : i64 to !llvm.ptr<i64>
    %295 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %296 = llvm.insertvalue %287, %295[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %297 = llvm.insertvalue %294, %296[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %298 = llvm.mlir.constant(0 : index) : i64
    %299 = llvm.insertvalue %298, %297[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %300 = llvm.insertvalue %279, %299[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %301 = llvm.insertvalue %280, %300[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %302 = llvm.mlir.constant(0 : index) : i64
    %303 = llvm.mlir.constant(4 : index) : i64
    %304 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb25(%302 : i64)
  ^bb25(%305: i64):  // 2 preds: ^bb24, ^bb26
    %306 = llvm.icmp "slt" %305, %303 : i64
    llvm.cond_br %306, ^bb26, ^bb27
  ^bb26:  // pred: ^bb25
    %307 = llvm.extractvalue %263[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %308 = llvm.getelementptr %307[%305] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %309 = llvm.load %308 : !llvm.ptr<i1>
    %310 = llvm.extractvalue %195[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %311 = llvm.getelementptr %310[%305] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %312 = llvm.load %311 : !llvm.ptr<i64>
    %313 = llvm.extractvalue %62[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %314 = llvm.getelementptr %313[%305] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %315 = llvm.load %314 : !llvm.ptr<i64>
    %316 = llvm.select %309, %312, %315 : i1, i64
    %317 = llvm.extractvalue %301[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %318 = llvm.getelementptr %317[%305] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %316, %318 : !llvm.ptr<i64>
    %319 = llvm.add %305, %304  : i64
    llvm.br ^bb25(%319 : i64)
  ^bb27:  // pred: ^bb25
    %320 = llvm.mlir.constant(1 : index) : i64
    %321 = llvm.mlir.constant(1 : index) : i64
    %322 = llvm.mlir.constant(1 : index) : i64
    %323 = llvm.mlir.constant(1 : index) : i64
    %324 = llvm.mlir.constant(1 : index) : i64
    %325 = llvm.mlir.null : !llvm.ptr<f64>
    %326 = llvm.getelementptr %325[%320] : (!llvm.ptr<f64>, i64) -> !llvm.ptr<f64>
    %327 = llvm.ptrtoint %326 : !llvm.ptr<f64> to i64
    %328 = llvm.mlir.constant(16 : index) : i64
    %329 = llvm.add %327, %328  : i64
    %330 = llvm.call @malloc(%329) : (i64) -> !llvm.ptr<i8>
    %331 = llvm.bitcast %330 : !llvm.ptr<i8> to !llvm.ptr<f64>
    %332 = llvm.ptrtoint %331 : !llvm.ptr<f64> to i64
    %333 = llvm.mlir.constant(1 : index) : i64
    %334 = llvm.sub %328, %333  : i64
    %335 = llvm.add %332, %334  : i64
    %336 = llvm.urem %335, %328  : i64
    %337 = llvm.sub %335, %336  : i64
    %338 = llvm.inttoptr %337 : i64 to !llvm.ptr<f64>
    %339 = llvm.mlir.undef : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>
    %340 = llvm.insertvalue %331, %339[0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %341 = llvm.insertvalue %338, %340[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %342 = llvm.mlir.constant(0 : index) : i64
    %343 = llvm.insertvalue %342, %341[2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %344 = llvm.insertvalue %320, %343[3, 0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %345 = llvm.insertvalue %321, %344[3, 1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %346 = llvm.insertvalue %322, %345[3, 2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %347 = llvm.insertvalue %323, %346[3, 3] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %348 = llvm.insertvalue %321, %347[4, 0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %349 = llvm.insertvalue %322, %348[4, 1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %350 = llvm.insertvalue %323, %349[4, 2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %351 = llvm.insertvalue %324, %350[4, 3] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %352 = llvm.mlir.constant(0 : index) : i64
    %353 = llvm.mlir.constant(1 : index) : i64
    %354 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb28(%352 : i64)
  ^bb28(%355: i64):  // 2 preds: ^bb27, ^bb38
    %356 = llvm.icmp "slt" %355, %353 : i64
    llvm.cond_br %356, ^bb29, ^bb39
  ^bb29:  // pred: ^bb28
    %357 = llvm.mlir.constant(0 : index) : i64
    %358 = llvm.mlir.constant(1 : index) : i64
    %359 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb30(%357 : i64)
  ^bb30(%360: i64):  // 2 preds: ^bb29, ^bb37
    %361 = llvm.icmp "slt" %360, %358 : i64
    llvm.cond_br %361, ^bb31, ^bb38
  ^bb31:  // pred: ^bb30
    %362 = llvm.mlir.constant(0 : index) : i64
    %363 = llvm.mlir.constant(1 : index) : i64
    %364 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb32(%362 : i64)
  ^bb32(%365: i64):  // 2 preds: ^bb31, ^bb36
    %366 = llvm.icmp "slt" %365, %363 : i64
    llvm.cond_br %366, ^bb33, ^bb37
  ^bb33:  // pred: ^bb32
    %367 = llvm.mlir.constant(0 : index) : i64
    %368 = llvm.mlir.constant(1 : index) : i64
    %369 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb34(%367 : i64)
  ^bb34(%370: i64):  // 2 preds: ^bb33, ^bb35
    %371 = llvm.icmp "slt" %370, %368 : i64
    llvm.cond_br %371, ^bb35, ^bb36
  ^bb35:  // pred: ^bb34
    %372 = llvm.extractvalue %136[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %373 = llvm.add %19, %19  : i64
    %374 = llvm.add %373, %19  : i64
    %375 = llvm.add %374, %19  : i64
    %376 = llvm.getelementptr %372[%375] : (!llvm.ptr<f64>, i64) -> !llvm.ptr<f64>
    %377 = llvm.load %376 : !llvm.ptr<f64>
    %378 = llvm.extractvalue %351[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %379 = llvm.add %355, %360  : i64
    %380 = llvm.add %379, %365  : i64
    %381 = llvm.add %380, %370  : i64
    %382 = llvm.getelementptr %378[%381] : (!llvm.ptr<f64>, i64) -> !llvm.ptr<f64>
    llvm.store %377, %382 : !llvm.ptr<f64>
    %383 = llvm.add %370, %369  : i64
    llvm.br ^bb34(%383 : i64)
  ^bb36:  // pred: ^bb34
    %384 = llvm.add %365, %364  : i64
    llvm.br ^bb32(%384 : i64)
  ^bb37:  // pred: ^bb32
    %385 = llvm.add %360, %359  : i64
    llvm.br ^bb30(%385 : i64)
  ^bb38:  // pred: ^bb30
    %386 = llvm.add %355, %354  : i64
    llvm.br ^bb28(%386 : i64)
  ^bb39:  // pred: ^bb28
    %387 = llvm.mlir.constant(1 : index) : i64
    %388 = llvm.mlir.constant(1 : index) : i64
    %389 = llvm.mlir.constant(1 : index) : i64
    %390 = llvm.mlir.constant(1 : index) : i64
    %391 = llvm.mlir.constant(1 : index) : i64
    %392 = llvm.mlir.null : !llvm.ptr<i32>
    %393 = llvm.getelementptr %392[%387] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %394 = llvm.ptrtoint %393 : !llvm.ptr<i32> to i64
    %395 = llvm.mlir.constant(16 : index) : i64
    %396 = llvm.add %394, %395  : i64
    %397 = llvm.call @malloc(%396) : (i64) -> !llvm.ptr<i8>
    %398 = llvm.bitcast %397 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %399 = llvm.ptrtoint %398 : !llvm.ptr<i32> to i64
    %400 = llvm.mlir.constant(1 : index) : i64
    %401 = llvm.sub %395, %400  : i64
    %402 = llvm.add %399, %401  : i64
    %403 = llvm.urem %402, %395  : i64
    %404 = llvm.sub %402, %403  : i64
    %405 = llvm.inttoptr %404 : i64 to !llvm.ptr<i32>
    %406 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %407 = llvm.insertvalue %398, %406[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %408 = llvm.insertvalue %405, %407[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %409 = llvm.mlir.constant(0 : index) : i64
    %410 = llvm.insertvalue %409, %408[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %411 = llvm.insertvalue %387, %410[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %412 = llvm.insertvalue %388, %411[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %413 = llvm.insertvalue %389, %412[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %414 = llvm.insertvalue %390, %413[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %415 = llvm.insertvalue %388, %414[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %416 = llvm.insertvalue %389, %415[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %417 = llvm.insertvalue %390, %416[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %418 = llvm.insertvalue %391, %417[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %419 = llvm.mlir.constant(0 : index) : i64
    %420 = llvm.mlir.constant(1 : index) : i64
    %421 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb40(%419 : i64)
  ^bb40(%422: i64):  // 2 preds: ^bb39, ^bb50
    %423 = llvm.icmp "slt" %422, %420 : i64
    llvm.cond_br %423, ^bb41, ^bb51
  ^bb41:  // pred: ^bb40
    %424 = llvm.mlir.constant(0 : index) : i64
    %425 = llvm.mlir.constant(1 : index) : i64
    %426 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb42(%424 : i64)
  ^bb42(%427: i64):  // 2 preds: ^bb41, ^bb49
    %428 = llvm.icmp "slt" %427, %425 : i64
    llvm.cond_br %428, ^bb43, ^bb50
  ^bb43:  // pred: ^bb42
    %429 = llvm.mlir.constant(0 : index) : i64
    %430 = llvm.mlir.constant(1 : index) : i64
    %431 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb44(%429 : i64)
  ^bb44(%432: i64):  // 2 preds: ^bb43, ^bb48
    %433 = llvm.icmp "slt" %432, %430 : i64
    llvm.cond_br %433, ^bb45, ^bb49
  ^bb45:  // pred: ^bb44
    %434 = llvm.mlir.constant(0 : index) : i64
    %435 = llvm.mlir.constant(1 : index) : i64
    %436 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb46(%434 : i64)
  ^bb46(%437: i64):  // 2 preds: ^bb45, ^bb47
    %438 = llvm.icmp "slt" %437, %435 : i64
    llvm.cond_br %438, ^bb47, ^bb48
  ^bb47:  // pred: ^bb46
    %439 = llvm.extractvalue %17[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %440 = llvm.add %422, %427  : i64
    %441 = llvm.add %440, %432  : i64
    %442 = llvm.add %441, %437  : i64
    %443 = llvm.getelementptr %439[%442] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %444 = llvm.load %443 : !llvm.ptr<i32>
    %445 = llvm.extractvalue %85[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %446 = llvm.getelementptr %445[%437] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %447 = llvm.load %446 : !llvm.ptr<i32>
    %448 = llvm.icmp "sgt" %444, %447 : i32
    %449 = llvm.select %448, %444, %447 : i1, i32
    %450 = llvm.extractvalue %418[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %451 = llvm.add %422, %427  : i64
    %452 = llvm.add %451, %432  : i64
    %453 = llvm.add %452, %437  : i64
    %454 = llvm.getelementptr %450[%453] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %449, %454 : !llvm.ptr<i32>
    %455 = llvm.add %437, %436  : i64
    llvm.br ^bb46(%455 : i64)
  ^bb48:  // pred: ^bb46
    %456 = llvm.add %432, %431  : i64
    llvm.br ^bb44(%456 : i64)
  ^bb49:  // pred: ^bb44
    %457 = llvm.add %427, %426  : i64
    llvm.br ^bb42(%457 : i64)
  ^bb50:  // pred: ^bb42
    %458 = llvm.add %422, %421  : i64
    llvm.br ^bb40(%458 : i64)
  ^bb51:  // pred: ^bb40
    %459 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>
    %460 = llvm.extractvalue %418[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %461 = llvm.extractvalue %418[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %462 = llvm.insertvalue %460, %459[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %463 = llvm.insertvalue %461, %462[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %464 = llvm.mlir.constant(0 : index) : i64
    %465 = llvm.insertvalue %464, %463[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %466 = llvm.mlir.constant(1 : index) : i64
    %467 = llvm.insertvalue %466, %465[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %468 = llvm.mlir.constant(1 : index) : i64
    %469 = llvm.insertvalue %468, %467[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %470 = llvm.mlir.constant(1 : index) : i64
    %471 = llvm.insertvalue %470, %469[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %472 = llvm.mlir.constant(1 : index) : i64
    %473 = llvm.insertvalue %472, %471[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %474 = llvm.mlir.constant(1 : index) : i64
    %475 = llvm.insertvalue %474, %473[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %476 = llvm.mlir.constant(1 : index) : i64
    %477 = llvm.insertvalue %476, %475[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %478 = llvm.mlir.undef : !llvm.struct<(struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)>
    %479 = llvm.insertvalue %351, %478[0] : !llvm.struct<(struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)> 
    %480 = llvm.insertvalue %477, %479[1] : !llvm.struct<(struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)> 
    llvm.return %480 : !llvm.struct<(struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>>, %arg2: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) attributes {input_names = ["v4_0", "v1_0"], llvm.emit_c_interface, output_names = ["v2_0", "v6_0"]} {
    %0 = llvm.load %arg1 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>>
    %1 = llvm.extractvalue %0[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %2 = llvm.extractvalue %0[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %3 = llvm.extractvalue %0[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %4 = llvm.extractvalue %0[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %5 = llvm.extractvalue %0[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %6 = llvm.load %arg2 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    %7 = llvm.extractvalue %6[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %8 = llvm.extractvalue %6[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %9 = llvm.extractvalue %6[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %10 = llvm.extractvalue %6[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %11 = llvm.extractvalue %6[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %12 = llvm.extractvalue %6[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %13 = llvm.extractvalue %6[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %14 = llvm.extractvalue %6[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %15 = llvm.extractvalue %6[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %16 = llvm.extractvalue %6[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %17 = llvm.extractvalue %6[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %18 = llvm.call @main_graph(%1, %2, %3, %4, %5, %7, %8, %9, %10, %11, %12, %13, %14, %15, %16, %17) : (!llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, !llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> !llvm.struct<(struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)>
    llvm.store %18, %arg0 : !llvm.ptr<struct<(struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)>>
    llvm.return
  }
  llvm.func @run_main_graph(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.call @omTensorListGetOmtArray(%arg0) : (!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.alloca %1 x !llvm.struct<(struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)> : (i64) -> !llvm.ptr<struct<(struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)>>
    %3 = llvm.mlir.constant(0 : i64) : i64
    %4 = llvm.getelementptr %0[%3] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    %5 = llvm.load %4 : !llvm.ptr<ptr<i8>>
    %6 = llvm.alloca %1 x !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>>
    %7 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %8 = llvm.call @omTensorGetDataPtr(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i8>
    %9 = llvm.bitcast %8 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %10 = llvm.insertvalue %9, %7[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %11 = llvm.insertvalue %9, %10[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %12 = llvm.mlir.constant(0 : i64) : i64
    %13 = llvm.insertvalue %12, %11[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %14 = llvm.call @omTensorGetShape(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %15 = llvm.call @omTensorGetStrides(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %16 = llvm.mlir.constant(0 : i64) : i64
    %17 = llvm.getelementptr %14[%16] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %18 = llvm.load %17 : !llvm.ptr<i64>
    %19 = llvm.insertvalue %18, %13[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %20 = llvm.getelementptr %15[%16] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %21 = llvm.load %20 : !llvm.ptr<i64>
    %22 = llvm.insertvalue %21, %19[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.store %22, %6 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>>
    %23 = llvm.mlir.constant(1 : i64) : i64
    %24 = llvm.getelementptr %0[%23] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    %25 = llvm.load %24 : !llvm.ptr<ptr<i8>>
    %26 = llvm.alloca %1 x !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> : (i64) -> !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    %27 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %28 = llvm.call @omTensorGetDataPtr(%25) : (!llvm.ptr<i8>) -> !llvm.ptr<i8>
    %29 = llvm.bitcast %28 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %30 = llvm.insertvalue %29, %27[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %31 = llvm.insertvalue %29, %30[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %32 = llvm.mlir.constant(0 : i64) : i64
    %33 = llvm.insertvalue %32, %31[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %34 = llvm.call @omTensorGetShape(%25) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %35 = llvm.call @omTensorGetStrides(%25) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %36 = llvm.mlir.constant(0 : i64) : i64
    %37 = llvm.getelementptr %34[%36] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %38 = llvm.load %37 : !llvm.ptr<i64>
    %39 = llvm.insertvalue %38, %33[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %40 = llvm.getelementptr %35[%36] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %41 = llvm.load %40 : !llvm.ptr<i64>
    %42 = llvm.insertvalue %41, %39[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %43 = llvm.mlir.constant(1 : i64) : i64
    %44 = llvm.getelementptr %34[%43] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %45 = llvm.load %44 : !llvm.ptr<i64>
    %46 = llvm.insertvalue %45, %42[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %47 = llvm.getelementptr %35[%43] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %48 = llvm.load %47 : !llvm.ptr<i64>
    %49 = llvm.insertvalue %48, %46[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %50 = llvm.mlir.constant(2 : i64) : i64
    %51 = llvm.getelementptr %34[%50] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %52 = llvm.load %51 : !llvm.ptr<i64>
    %53 = llvm.insertvalue %52, %49[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %54 = llvm.getelementptr %35[%50] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %55 = llvm.load %54 : !llvm.ptr<i64>
    %56 = llvm.insertvalue %55, %53[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %57 = llvm.mlir.constant(3 : i64) : i64
    %58 = llvm.getelementptr %34[%57] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %59 = llvm.load %58 : !llvm.ptr<i64>
    %60 = llvm.insertvalue %59, %56[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %61 = llvm.getelementptr %35[%57] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %62 = llvm.load %61 : !llvm.ptr<i64>
    %63 = llvm.insertvalue %62, %60[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    llvm.store %63, %26 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    llvm.call @_mlir_ciface_main_graph(%2, %6, %26) : (!llvm.ptr<struct<(struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) -> ()
    %64 = llvm.load %2 : !llvm.ptr<struct<(struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)>>
    %65 = llvm.extractvalue %64[0] : !llvm.struct<(struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)> 
    %66 = llvm.extractvalue %64[1] : !llvm.struct<(struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>)> 
    %67 = llvm.mlir.constant(2 : i64) : i64
    %68 = llvm.mlir.constant(16 : i64) : i64
    %69 = llvm.call @malloc(%68) : (i64) -> !llvm.ptr<i8>
    %70 = llvm.bitcast %69 : !llvm.ptr<i8> to !llvm.ptr<ptr<i8>>
    %71 = llvm.mlir.constant(4 : i64) : i64
    %72 = llvm.call @omTensorCreateUntyped(%71) : (i64) -> !llvm.ptr<i8>
    %73 = llvm.mlir.constant(1 : i64) : i64
    %74 = llvm.extractvalue %65[0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %75 = llvm.bitcast %74 : !llvm.ptr<f64> to !llvm.ptr<i8>
    %76 = llvm.extractvalue %65[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %77 = llvm.bitcast %76 : !llvm.ptr<f64> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%72, %73, %75, %77) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %78 = llvm.mlir.constant(11 : i64) : i64
    llvm.call @omTensorSetDataType(%72, %78) : (!llvm.ptr<i8>, i64) -> ()
    %79 = llvm.call @omTensorGetShape(%72) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %80 = llvm.call @omTensorGetStrides(%72) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %81 = llvm.mlir.constant(0 : i64) : i64
    %82 = llvm.extractvalue %65[3, 0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %83 = llvm.getelementptr %79[%81] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %82, %83 : !llvm.ptr<i64>
    %84 = llvm.extractvalue %65[4, 0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %85 = llvm.getelementptr %80[%81] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %84, %85 : !llvm.ptr<i64>
    %86 = llvm.mlir.constant(1 : i64) : i64
    %87 = llvm.extractvalue %65[3, 1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %88 = llvm.getelementptr %79[%86] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %87, %88 : !llvm.ptr<i64>
    %89 = llvm.extractvalue %65[4, 1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %90 = llvm.getelementptr %80[%86] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %89, %90 : !llvm.ptr<i64>
    %91 = llvm.mlir.constant(2 : i64) : i64
    %92 = llvm.extractvalue %65[3, 2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %93 = llvm.getelementptr %79[%91] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %92, %93 : !llvm.ptr<i64>
    %94 = llvm.extractvalue %65[4, 2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %95 = llvm.getelementptr %80[%91] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %94, %95 : !llvm.ptr<i64>
    %96 = llvm.mlir.constant(3 : i64) : i64
    %97 = llvm.extractvalue %65[3, 3] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %98 = llvm.getelementptr %79[%96] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %97, %98 : !llvm.ptr<i64>
    %99 = llvm.extractvalue %65[4, 3] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %100 = llvm.getelementptr %80[%96] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %99, %100 : !llvm.ptr<i64>
    %101 = llvm.mlir.constant(0 : i64) : i64
    %102 = llvm.getelementptr %70[%101] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %72, %102 : !llvm.ptr<ptr<i8>>
    %103 = llvm.mlir.constant(3 : i64) : i64
    %104 = llvm.call @omTensorCreateUntyped(%103) : (i64) -> !llvm.ptr<i8>
    %105 = llvm.mlir.constant(1 : i64) : i64
    %106 = llvm.extractvalue %66[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %107 = llvm.bitcast %106 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %108 = llvm.extractvalue %66[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %109 = llvm.bitcast %108 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%104, %105, %107, %109) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %110 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%104, %110) : (!llvm.ptr<i8>, i64) -> ()
    %111 = llvm.call @omTensorGetShape(%104) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %112 = llvm.call @omTensorGetStrides(%104) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %113 = llvm.mlir.constant(0 : i64) : i64
    %114 = llvm.extractvalue %66[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %115 = llvm.getelementptr %111[%113] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %114, %115 : !llvm.ptr<i64>
    %116 = llvm.extractvalue %66[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %117 = llvm.getelementptr %112[%113] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %116, %117 : !llvm.ptr<i64>
    %118 = llvm.mlir.constant(1 : i64) : i64
    %119 = llvm.extractvalue %66[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %120 = llvm.getelementptr %111[%118] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %119, %120 : !llvm.ptr<i64>
    %121 = llvm.extractvalue %66[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %122 = llvm.getelementptr %112[%118] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %121, %122 : !llvm.ptr<i64>
    %123 = llvm.mlir.constant(2 : i64) : i64
    %124 = llvm.extractvalue %66[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %125 = llvm.getelementptr %111[%123] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %124, %125 : !llvm.ptr<i64>
    %126 = llvm.extractvalue %66[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %127 = llvm.getelementptr %112[%123] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %126, %127 : !llvm.ptr<i64>
    %128 = llvm.mlir.constant(1 : i64) : i64
    %129 = llvm.getelementptr %70[%128] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %104, %129 : !llvm.ptr<ptr<i8>>
    %130 = llvm.call @omTensorListCreate(%70, %67, %1) : (!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
    llvm.return %130 : !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_in_sig : !llvm.ptr<array<130 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<130 x i8>> to !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_out_sig : !llvm.ptr<array<137 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<137 x i8>> to !llvm.ptr<i8>
    llvm.return %8 : !llvm.ptr<i8>
  ^bb2:  // pred: ^bb0
    %9 = llvm.mlir.null : !llvm.ptr<i8>
    llvm.return %9 : !llvm.ptr<i8>
  }
}

