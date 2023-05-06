module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 1 , 1] , \22name\22 : \22v6_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v3_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22i32\22 , \22dims\22 : [2 , 1 , 1 , 1] , \22name\22 : \22v5_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [2 , 1 , 1 , 1] , \22name\22 : \22v1_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
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
  llvm.mlir.global internal constant @constant_3(dense<[2, 1, 1, 1]> : tensor<4xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<4 x i64>
  llvm.mlir.global internal constant @constant_2(dense<-1> : tensor<i64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x i64>
  llvm.mlir.global internal constant @constant_1(dense<[2, 1, 1, 1]> : tensor<4xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<4 x i64>
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: i64, %arg11: i64, %arg12: i64, %arg13: !llvm.ptr<i32>, %arg14: !llvm.ptr<i32>, %arg15: i64, %arg16: i64, %arg17: i64, %arg18: i64, %arg19: i64, %arg20: i64, %arg21: i64, %arg22: i64, %arg23: i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> attributes {input_names = ["v6_0", "v3_0"], llvm.emit_c_interface, output_names = ["v5_0", "v1_0"]} {
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
    %14 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %15 = llvm.insertvalue %arg13, %14[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %16 = llvm.insertvalue %arg14, %15[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %17 = llvm.insertvalue %arg15, %16[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %18 = llvm.insertvalue %arg16, %17[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %19 = llvm.insertvalue %arg20, %18[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %20 = llvm.insertvalue %arg17, %19[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %21 = llvm.insertvalue %arg21, %20[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %22 = llvm.insertvalue %arg18, %21[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %23 = llvm.insertvalue %arg22, %22[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %24 = llvm.insertvalue %arg19, %23[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %25 = llvm.insertvalue %arg23, %24[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %26 = llvm.mlir.constant(1 : i64) : i64
    %27 = llvm.mlir.constant(0 : index) : i64
    %28 = llvm.mlir.constant(2147483647 : i32) : i32
    %29 = llvm.mlir.addressof @constant_1 : !llvm.ptr<array<4 x i64>>
    %30 = llvm.bitcast %29 : !llvm.ptr<array<4 x i64>> to !llvm.ptr<i64>
    %31 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %32 = llvm.insertvalue %30, %31[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %33 = llvm.insertvalue %30, %32[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %34 = llvm.mlir.constant(0 : index) : i64
    %35 = llvm.insertvalue %34, %33[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %36 = llvm.mlir.constant(4 : index) : i64
    %37 = llvm.insertvalue %36, %35[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %38 = llvm.mlir.constant(1 : index) : i64
    %39 = llvm.insertvalue %38, %37[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %40 = llvm.mlir.addressof @constant_2 : !llvm.ptr<array<1 x i64>>
    %41 = llvm.bitcast %40 : !llvm.ptr<array<1 x i64>> to !llvm.ptr<i64>
    %42 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64)>
    %43 = llvm.insertvalue %41, %42[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %44 = llvm.insertvalue %41, %43[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %45 = llvm.mlir.constant(0 : index) : i64
    %46 = llvm.insertvalue %45, %44[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %47 = llvm.mlir.addressof @constant_3 : !llvm.ptr<array<4 x i64>>
    %48 = llvm.bitcast %47 : !llvm.ptr<array<4 x i64>> to !llvm.ptr<i64>
    %49 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %50 = llvm.insertvalue %48, %49[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %51 = llvm.insertvalue %48, %50[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %52 = llvm.mlir.constant(0 : index) : i64
    %53 = llvm.insertvalue %52, %51[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %54 = llvm.mlir.constant(4 : index) : i64
    %55 = llvm.insertvalue %54, %53[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %56 = llvm.mlir.constant(1 : index) : i64
    %57 = llvm.insertvalue %56, %55[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %58 = llvm.mlir.constant(1 : index) : i64
    %59 = llvm.mlir.constant(1 : index) : i64
    %60 = llvm.mlir.constant(1 : index) : i64
    %61 = llvm.mlir.constant(1 : index) : i64
    %62 = llvm.mlir.constant(1 : index) : i64
    %63 = llvm.mlir.null : !llvm.ptr<i32>
    %64 = llvm.getelementptr %63[%58] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %65 = llvm.ptrtoint %64 : !llvm.ptr<i32> to i64
    %66 = llvm.mlir.constant(16 : index) : i64
    %67 = llvm.add %65, %66  : i64
    %68 = llvm.call @malloc(%67) : (i64) -> !llvm.ptr<i8>
    %69 = llvm.bitcast %68 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %70 = llvm.ptrtoint %69 : !llvm.ptr<i32> to i64
    %71 = llvm.mlir.constant(1 : index) : i64
    %72 = llvm.sub %66, %71  : i64
    %73 = llvm.add %70, %72  : i64
    %74 = llvm.urem %73, %66  : i64
    %75 = llvm.sub %73, %74  : i64
    %76 = llvm.inttoptr %75 : i64 to !llvm.ptr<i32>
    %77 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %78 = llvm.insertvalue %69, %77[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %79 = llvm.insertvalue %76, %78[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %80 = llvm.mlir.constant(0 : index) : i64
    %81 = llvm.insertvalue %80, %79[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %82 = llvm.insertvalue %58, %81[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %83 = llvm.insertvalue %59, %82[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %84 = llvm.insertvalue %60, %83[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %85 = llvm.insertvalue %61, %84[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %86 = llvm.insertvalue %59, %85[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %87 = llvm.insertvalue %60, %86[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %88 = llvm.insertvalue %61, %87[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %89 = llvm.insertvalue %62, %88[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %90 = llvm.mlir.constant(0 : index) : i64
    %91 = llvm.mlir.constant(1 : index) : i64
    %92 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%90 : i64)
  ^bb1(%93: i64):  // 2 preds: ^bb0, ^bb11
    %94 = llvm.icmp "slt" %93, %91 : i64
    llvm.cond_br %94, ^bb2, ^bb12
  ^bb2:  // pred: ^bb1
    %95 = llvm.mlir.constant(0 : index) : i64
    %96 = llvm.mlir.constant(1 : index) : i64
    %97 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb3(%95 : i64)
  ^bb3(%98: i64):  // 2 preds: ^bb2, ^bb10
    %99 = llvm.icmp "slt" %98, %96 : i64
    llvm.cond_br %99, ^bb4, ^bb11
  ^bb4:  // pred: ^bb3
    %100 = llvm.mlir.constant(0 : index) : i64
    %101 = llvm.mlir.constant(1 : index) : i64
    %102 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb5(%100 : i64)
  ^bb5(%103: i64):  // 2 preds: ^bb4, ^bb9
    %104 = llvm.icmp "slt" %103, %101 : i64
    llvm.cond_br %104, ^bb6, ^bb10
  ^bb6:  // pred: ^bb5
    %105 = llvm.mlir.constant(0 : index) : i64
    %106 = llvm.mlir.constant(1 : index) : i64
    %107 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb7(%105 : i64)
  ^bb7(%108: i64):  // 2 preds: ^bb6, ^bb8
    %109 = llvm.icmp "slt" %108, %106 : i64
    llvm.cond_br %109, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %110 = llvm.extractvalue %89[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %111 = llvm.add %93, %98  : i64
    %112 = llvm.add %111, %103  : i64
    %113 = llvm.add %112, %108  : i64
    %114 = llvm.getelementptr %110[%113] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %28, %114 : !llvm.ptr<i32>
    %115 = llvm.add %108, %107  : i64
    llvm.br ^bb7(%115 : i64)
  ^bb9:  // pred: ^bb7
    %116 = llvm.add %103, %102  : i64
    llvm.br ^bb5(%116 : i64)
  ^bb10:  // pred: ^bb5
    %117 = llvm.add %98, %97  : i64
    llvm.br ^bb3(%117 : i64)
  ^bb11:  // pred: ^bb3
    %118 = llvm.add %93, %92  : i64
    llvm.br ^bb1(%118 : i64)
  ^bb12:  // pred: ^bb1
    %119 = llvm.mlir.constant(0 : index) : i64
    %120 = llvm.mlir.constant(1 : index) : i64
    %121 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb13(%119 : i64)
  ^bb13(%122: i64):  // 2 preds: ^bb12, ^bb26
    %123 = llvm.icmp "slt" %122, %120 : i64
    llvm.cond_br %123, ^bb14, ^bb27
  ^bb14:  // pred: ^bb13
    %124 = llvm.mlir.constant(0 : index) : i64
    %125 = llvm.mlir.constant(1 : index) : i64
    %126 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb15(%124 : i64)
  ^bb15(%127: i64):  // 2 preds: ^bb14, ^bb25
    %128 = llvm.icmp "slt" %127, %125 : i64
    llvm.cond_br %128, ^bb16, ^bb26
  ^bb16:  // pred: ^bb15
    %129 = llvm.mlir.constant(0 : index) : i64
    %130 = llvm.mlir.constant(1 : index) : i64
    %131 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb17(%129 : i64)
  ^bb17(%132: i64):  // 2 preds: ^bb16, ^bb24
    %133 = llvm.icmp "slt" %132, %130 : i64
    llvm.cond_br %133, ^bb18, ^bb25
  ^bb18:  // pred: ^bb17
    %134 = llvm.mlir.constant(0 : index) : i64
    %135 = llvm.mlir.constant(1 : index) : i64
    %136 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb19(%134 : i64)
  ^bb19(%137: i64):  // 2 preds: ^bb18, ^bb23
    %138 = llvm.icmp "slt" %137, %135 : i64
    llvm.cond_br %138, ^bb20, ^bb24
  ^bb20:  // pred: ^bb19
    %139 = llvm.mlir.constant(0 : index) : i64
    %140 = llvm.mlir.constant(1 : index) : i64
    %141 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb21(%139 : i64)
  ^bb21(%142: i64):  // 2 preds: ^bb20, ^bb22
    %143 = llvm.icmp "slt" %142, %140 : i64
    llvm.cond_br %143, ^bb22, ^bb23
  ^bb22:  // pred: ^bb21
    %144 = llvm.extractvalue %13[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %145 = llvm.add %122, %127  : i64
    %146 = llvm.add %145, %132  : i64
    %147 = llvm.add %146, %137  : i64
    %148 = llvm.add %147, %142  : i64
    %149 = llvm.getelementptr %144[%148] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %150 = llvm.load %149 : !llvm.ptr<i32>
    %151 = llvm.extractvalue %89[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %152 = llvm.add %122, %127  : i64
    %153 = llvm.add %152, %132  : i64
    %154 = llvm.add %153, %142  : i64
    %155 = llvm.getelementptr %151[%154] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %156 = llvm.load %155 : !llvm.ptr<i32>
    %157 = llvm.icmp "slt" %156, %150 : i32
    %158 = llvm.select %157, %156, %150 : i1, i32
    %159 = llvm.extractvalue %89[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %160 = llvm.add %122, %127  : i64
    %161 = llvm.add %160, %132  : i64
    %162 = llvm.add %161, %142  : i64
    %163 = llvm.getelementptr %159[%162] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %158, %163 : !llvm.ptr<i32>
    %164 = llvm.add %142, %141  : i64
    llvm.br ^bb21(%164 : i64)
  ^bb23:  // pred: ^bb21
    %165 = llvm.add %137, %136  : i64
    llvm.br ^bb19(%165 : i64)
  ^bb24:  // pred: ^bb19
    %166 = llvm.add %132, %131  : i64
    llvm.br ^bb17(%166 : i64)
  ^bb25:  // pred: ^bb17
    %167 = llvm.add %127, %126  : i64
    llvm.br ^bb15(%167 : i64)
  ^bb26:  // pred: ^bb15
    %168 = llvm.add %122, %121  : i64
    llvm.br ^bb13(%168 : i64)
  ^bb27:  // pred: ^bb13
    %169 = llvm.mlir.constant(2 : index) : i64
    %170 = llvm.mlir.constant(1 : index) : i64
    %171 = llvm.mlir.constant(1 : index) : i64
    %172 = llvm.mlir.constant(1 : index) : i64
    %173 = llvm.mlir.constant(1 : index) : i64
    %174 = llvm.mlir.null : !llvm.ptr<i32>
    %175 = llvm.getelementptr %174[%169] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %176 = llvm.ptrtoint %175 : !llvm.ptr<i32> to i64
    %177 = llvm.mlir.constant(16 : index) : i64
    %178 = llvm.add %176, %177  : i64
    %179 = llvm.call @malloc(%178) : (i64) -> !llvm.ptr<i8>
    %180 = llvm.bitcast %179 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %181 = llvm.ptrtoint %180 : !llvm.ptr<i32> to i64
    %182 = llvm.mlir.constant(1 : index) : i64
    %183 = llvm.sub %177, %182  : i64
    %184 = llvm.add %181, %183  : i64
    %185 = llvm.urem %184, %177  : i64
    %186 = llvm.sub %184, %185  : i64
    %187 = llvm.inttoptr %186 : i64 to !llvm.ptr<i32>
    %188 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %189 = llvm.insertvalue %180, %188[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %190 = llvm.insertvalue %187, %189[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %191 = llvm.mlir.constant(0 : index) : i64
    %192 = llvm.insertvalue %191, %190[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %193 = llvm.insertvalue %169, %192[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %194 = llvm.insertvalue %170, %193[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %195 = llvm.insertvalue %171, %194[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %196 = llvm.insertvalue %172, %195[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %197 = llvm.insertvalue %170, %196[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %198 = llvm.insertvalue %171, %197[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %199 = llvm.insertvalue %172, %198[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %200 = llvm.insertvalue %173, %199[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %201 = llvm.mlir.constant(0 : index) : i64
    %202 = llvm.mlir.constant(1 : index) : i64
    %203 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb28(%201 : i64)
  ^bb28(%204: i64):  // 2 preds: ^bb27, ^bb38
    %205 = llvm.icmp "slt" %204, %202 : i64
    llvm.cond_br %205, ^bb29, ^bb39
  ^bb29:  // pred: ^bb28
    %206 = llvm.mlir.constant(0 : index) : i64
    %207 = llvm.mlir.constant(1 : index) : i64
    %208 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb30(%206 : i64)
  ^bb30(%209: i64):  // 2 preds: ^bb29, ^bb37
    %210 = llvm.icmp "slt" %209, %207 : i64
    llvm.cond_br %210, ^bb31, ^bb38
  ^bb31:  // pred: ^bb30
    %211 = llvm.mlir.constant(0 : index) : i64
    %212 = llvm.mlir.constant(1 : index) : i64
    %213 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb32(%211 : i64)
  ^bb32(%214: i64):  // 2 preds: ^bb31, ^bb36
    %215 = llvm.icmp "slt" %214, %212 : i64
    llvm.cond_br %215, ^bb33, ^bb37
  ^bb33:  // pred: ^bb32
    %216 = llvm.mlir.constant(0 : index) : i64
    %217 = llvm.mlir.constant(1 : index) : i64
    %218 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb34(%216 : i64)
  ^bb34(%219: i64):  // 2 preds: ^bb33, ^bb35
    %220 = llvm.icmp "slt" %219, %217 : i64
    llvm.cond_br %220, ^bb35, ^bb36
  ^bb35:  // pred: ^bb34
    %221 = llvm.extractvalue %89[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %222 = llvm.add %204, %209  : i64
    %223 = llvm.add %222, %214  : i64
    %224 = llvm.add %223, %219  : i64
    %225 = llvm.getelementptr %221[%224] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %226 = llvm.load %225 : !llvm.ptr<i32>
    %227 = llvm.extractvalue %200[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %228 = llvm.add %204, %209  : i64
    %229 = llvm.add %228, %214  : i64
    %230 = llvm.add %229, %219  : i64
    %231 = llvm.getelementptr %227[%230] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %226, %231 : !llvm.ptr<i32>
    %232 = llvm.add %219, %218  : i64
    llvm.br ^bb34(%232 : i64)
  ^bb36:  // pred: ^bb34
    %233 = llvm.add %214, %213  : i64
    llvm.br ^bb32(%233 : i64)
  ^bb37:  // pred: ^bb32
    %234 = llvm.add %209, %208  : i64
    llvm.br ^bb30(%234 : i64)
  ^bb38:  // pred: ^bb30
    %235 = llvm.add %204, %203  : i64
    llvm.br ^bb28(%235 : i64)
  ^bb39:  // pred: ^bb28
    %236 = llvm.mlir.constant(0 : index) : i64
    %237 = llvm.mlir.constant(1 : index) : i64
    %238 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb40(%236 : i64)
  ^bb40(%239: i64):  // 2 preds: ^bb39, ^bb50
    %240 = llvm.icmp "slt" %239, %237 : i64
    llvm.cond_br %240, ^bb41, ^bb51
  ^bb41:  // pred: ^bb40
    %241 = llvm.mlir.constant(0 : index) : i64
    %242 = llvm.mlir.constant(1 : index) : i64
    %243 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb42(%241 : i64)
  ^bb42(%244: i64):  // 2 preds: ^bb41, ^bb49
    %245 = llvm.icmp "slt" %244, %242 : i64
    llvm.cond_br %245, ^bb43, ^bb50
  ^bb43:  // pred: ^bb42
    %246 = llvm.mlir.constant(0 : index) : i64
    %247 = llvm.mlir.constant(1 : index) : i64
    %248 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb44(%246 : i64)
  ^bb44(%249: i64):  // 2 preds: ^bb43, ^bb48
    %250 = llvm.icmp "slt" %249, %247 : i64
    llvm.cond_br %250, ^bb45, ^bb49
  ^bb45:  // pred: ^bb44
    %251 = llvm.mlir.constant(0 : index) : i64
    %252 = llvm.mlir.constant(1 : index) : i64
    %253 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb46(%251 : i64)
  ^bb46(%254: i64):  // 2 preds: ^bb45, ^bb47
    %255 = llvm.icmp "slt" %254, %252 : i64
    llvm.cond_br %255, ^bb47, ^bb48
  ^bb47:  // pred: ^bb46
    %256 = llvm.mlir.constant(1 : index) : i64
    %257 = llvm.add %239, %256  : i64
    %258 = llvm.extractvalue %25[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %259 = llvm.add %239, %244  : i64
    %260 = llvm.add %259, %249  : i64
    %261 = llvm.add %260, %254  : i64
    %262 = llvm.getelementptr %258[%261] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %263 = llvm.load %262 : !llvm.ptr<i32>
    %264 = llvm.extractvalue %200[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %265 = llvm.add %257, %244  : i64
    %266 = llvm.add %265, %249  : i64
    %267 = llvm.add %266, %254  : i64
    %268 = llvm.getelementptr %264[%267] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %263, %268 : !llvm.ptr<i32>
    %269 = llvm.add %254, %253  : i64
    llvm.br ^bb46(%269 : i64)
  ^bb48:  // pred: ^bb46
    %270 = llvm.add %249, %248  : i64
    llvm.br ^bb44(%270 : i64)
  ^bb49:  // pred: ^bb44
    %271 = llvm.add %244, %243  : i64
    llvm.br ^bb42(%271 : i64)
  ^bb50:  // pred: ^bb42
    %272 = llvm.add %239, %238  : i64
    llvm.br ^bb40(%272 : i64)
  ^bb51:  // pred: ^bb40
    %273 = llvm.mlir.constant(2 : index) : i64
    %274 = llvm.mlir.constant(1 : index) : i64
    %275 = llvm.mlir.constant(1 : index) : i64
    %276 = llvm.mlir.constant(1 : index) : i64
    %277 = llvm.mlir.constant(1 : index) : i64
    %278 = llvm.mlir.null : !llvm.ptr<i32>
    %279 = llvm.getelementptr %278[%273] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %280 = llvm.ptrtoint %279 : !llvm.ptr<i32> to i64
    %281 = llvm.mlir.constant(16 : index) : i64
    %282 = llvm.add %280, %281  : i64
    %283 = llvm.call @malloc(%282) : (i64) -> !llvm.ptr<i8>
    %284 = llvm.bitcast %283 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %285 = llvm.ptrtoint %284 : !llvm.ptr<i32> to i64
    %286 = llvm.mlir.constant(1 : index) : i64
    %287 = llvm.sub %281, %286  : i64
    %288 = llvm.add %285, %287  : i64
    %289 = llvm.urem %288, %281  : i64
    %290 = llvm.sub %288, %289  : i64
    %291 = llvm.inttoptr %290 : i64 to !llvm.ptr<i32>
    %292 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %293 = llvm.insertvalue %284, %292[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %294 = llvm.insertvalue %291, %293[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %295 = llvm.mlir.constant(0 : index) : i64
    %296 = llvm.insertvalue %295, %294[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %297 = llvm.insertvalue %273, %296[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %298 = llvm.insertvalue %274, %297[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %299 = llvm.insertvalue %275, %298[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %300 = llvm.insertvalue %276, %299[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %301 = llvm.insertvalue %274, %300[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %302 = llvm.insertvalue %275, %301[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %303 = llvm.insertvalue %276, %302[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %304 = llvm.insertvalue %277, %303[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %305 = llvm.mlir.constant(0 : index) : i64
    %306 = llvm.mlir.constant(2 : index) : i64
    %307 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb52(%305 : i64)
  ^bb52(%308: i64):  // 2 preds: ^bb51, ^bb62
    %309 = llvm.icmp "slt" %308, %306 : i64
    llvm.cond_br %309, ^bb53, ^bb63
  ^bb53:  // pred: ^bb52
    %310 = llvm.mlir.constant(0 : index) : i64
    %311 = llvm.mlir.constant(1 : index) : i64
    %312 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb54(%310 : i64)
  ^bb54(%313: i64):  // 2 preds: ^bb53, ^bb61
    %314 = llvm.icmp "slt" %313, %311 : i64
    llvm.cond_br %314, ^bb55, ^bb62
  ^bb55:  // pred: ^bb54
    %315 = llvm.mlir.constant(0 : index) : i64
    %316 = llvm.mlir.constant(1 : index) : i64
    %317 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb56(%315 : i64)
  ^bb56(%318: i64):  // 2 preds: ^bb55, ^bb60
    %319 = llvm.icmp "slt" %318, %316 : i64
    llvm.cond_br %319, ^bb57, ^bb61
  ^bb57:  // pred: ^bb56
    %320 = llvm.mlir.constant(0 : index) : i64
    %321 = llvm.mlir.constant(1 : index) : i64
    %322 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb58(%320 : i64)
  ^bb58(%323: i64):  // 2 preds: ^bb57, ^bb59
    %324 = llvm.icmp "slt" %323, %321 : i64
    llvm.cond_br %324, ^bb59, ^bb60
  ^bb59:  // pred: ^bb58
    %325 = llvm.extractvalue %200[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %326 = llvm.add %308, %313  : i64
    %327 = llvm.add %326, %318  : i64
    %328 = llvm.add %327, %323  : i64
    %329 = llvm.getelementptr %325[%328] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %330 = llvm.load %329 : !llvm.ptr<i32>
    %331 = llvm.extractvalue %89[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %332 = llvm.add %27, %313  : i64
    %333 = llvm.add %332, %318  : i64
    %334 = llvm.add %333, %323  : i64
    %335 = llvm.getelementptr %331[%334] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %336 = llvm.load %335 : !llvm.ptr<i32>
    %337 = llvm.sub %330, %336  : i32
    %338 = llvm.extractvalue %304[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %339 = llvm.add %308, %313  : i64
    %340 = llvm.add %339, %318  : i64
    %341 = llvm.add %340, %323  : i64
    %342 = llvm.getelementptr %338[%341] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %337, %342 : !llvm.ptr<i32>
    %343 = llvm.add %323, %322  : i64
    llvm.br ^bb58(%343 : i64)
  ^bb60:  // pred: ^bb58
    %344 = llvm.add %318, %317  : i64
    llvm.br ^bb56(%344 : i64)
  ^bb61:  // pred: ^bb56
    %345 = llvm.add %313, %312  : i64
    llvm.br ^bb54(%345 : i64)
  ^bb62:  // pred: ^bb54
    %346 = llvm.add %308, %307  : i64
    llvm.br ^bb52(%346 : i64)
  ^bb63:  // pred: ^bb52
    %347 = llvm.mlir.constant(2 : index) : i64
    %348 = llvm.mlir.constant(1 : index) : i64
    %349 = llvm.mlir.constant(1 : index) : i64
    %350 = llvm.mlir.constant(1 : index) : i64
    %351 = llvm.mlir.constant(1 : index) : i64
    %352 = llvm.mlir.null : !llvm.ptr<i32>
    %353 = llvm.getelementptr %352[%347] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %354 = llvm.ptrtoint %353 : !llvm.ptr<i32> to i64
    %355 = llvm.mlir.constant(16 : index) : i64
    %356 = llvm.add %354, %355  : i64
    %357 = llvm.call @malloc(%356) : (i64) -> !llvm.ptr<i8>
    %358 = llvm.bitcast %357 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %359 = llvm.ptrtoint %358 : !llvm.ptr<i32> to i64
    %360 = llvm.mlir.constant(1 : index) : i64
    %361 = llvm.sub %355, %360  : i64
    %362 = llvm.add %359, %361  : i64
    %363 = llvm.urem %362, %355  : i64
    %364 = llvm.sub %362, %363  : i64
    %365 = llvm.inttoptr %364 : i64 to !llvm.ptr<i32>
    %366 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %367 = llvm.insertvalue %358, %366[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %368 = llvm.insertvalue %365, %367[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %369 = llvm.mlir.constant(0 : index) : i64
    %370 = llvm.insertvalue %369, %368[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %371 = llvm.insertvalue %347, %370[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %372 = llvm.insertvalue %348, %371[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %373 = llvm.insertvalue %349, %372[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %374 = llvm.insertvalue %350, %373[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %375 = llvm.insertvalue %348, %374[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %376 = llvm.insertvalue %349, %375[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %377 = llvm.insertvalue %350, %376[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %378 = llvm.insertvalue %351, %377[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %379 = llvm.mlir.constant(0 : index) : i64
    %380 = llvm.mlir.constant(2 : index) : i64
    %381 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb64(%379 : i64)
  ^bb64(%382: i64):  // 2 preds: ^bb63, ^bb74
    %383 = llvm.icmp "slt" %382, %380 : i64
    llvm.cond_br %383, ^bb65, ^bb75
  ^bb65:  // pred: ^bb64
    %384 = llvm.mlir.constant(0 : index) : i64
    %385 = llvm.mlir.constant(1 : index) : i64
    %386 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb66(%384 : i64)
  ^bb66(%387: i64):  // 2 preds: ^bb65, ^bb73
    %388 = llvm.icmp "slt" %387, %385 : i64
    llvm.cond_br %388, ^bb67, ^bb74
  ^bb67:  // pred: ^bb66
    %389 = llvm.mlir.constant(0 : index) : i64
    %390 = llvm.mlir.constant(1 : index) : i64
    %391 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb68(%389 : i64)
  ^bb68(%392: i64):  // 2 preds: ^bb67, ^bb72
    %393 = llvm.icmp "slt" %392, %390 : i64
    llvm.cond_br %393, ^bb69, ^bb73
  ^bb69:  // pred: ^bb68
    %394 = llvm.mlir.constant(0 : index) : i64
    %395 = llvm.mlir.constant(1 : index) : i64
    %396 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb70(%394 : i64)
  ^bb70(%397: i64):  // 2 preds: ^bb69, ^bb71
    %398 = llvm.icmp "slt" %397, %395 : i64
    llvm.cond_br %398, ^bb71, ^bb72
  ^bb71:  // pred: ^bb70
    %399 = llvm.extractvalue %304[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %400 = llvm.add %382, %387  : i64
    %401 = llvm.add %400, %392  : i64
    %402 = llvm.add %401, %397  : i64
    %403 = llvm.getelementptr %399[%402] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %404 = llvm.load %403 : !llvm.ptr<i32>
    %405 = llvm.extractvalue %200[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %406 = llvm.add %382, %387  : i64
    %407 = llvm.add %406, %392  : i64
    %408 = llvm.add %407, %397  : i64
    %409 = llvm.getelementptr %405[%408] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %410 = llvm.load %409 : !llvm.ptr<i32>
    %411 = llvm.add %404, %410  : i32
    %412 = llvm.extractvalue %378[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %413 = llvm.add %382, %387  : i64
    %414 = llvm.add %413, %392  : i64
    %415 = llvm.add %414, %397  : i64
    %416 = llvm.getelementptr %412[%415] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %411, %416 : !llvm.ptr<i32>
    %417 = llvm.add %397, %396  : i64
    llvm.br ^bb70(%417 : i64)
  ^bb72:  // pred: ^bb70
    %418 = llvm.add %392, %391  : i64
    llvm.br ^bb68(%418 : i64)
  ^bb73:  // pred: ^bb68
    %419 = llvm.add %387, %386  : i64
    llvm.br ^bb66(%419 : i64)
  ^bb74:  // pred: ^bb66
    %420 = llvm.add %382, %381  : i64
    llvm.br ^bb64(%420 : i64)
  ^bb75:  // pred: ^bb64
    %421 = llvm.mlir.constant(4 : index) : i64
    %422 = llvm.mlir.constant(1 : index) : i64
    %423 = llvm.mlir.null : !llvm.ptr<i64>
    %424 = llvm.getelementptr %423[%421] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %425 = llvm.ptrtoint %424 : !llvm.ptr<i64> to i64
    %426 = llvm.mlir.constant(16 : index) : i64
    %427 = llvm.add %425, %426  : i64
    %428 = llvm.call @malloc(%427) : (i64) -> !llvm.ptr<i8>
    %429 = llvm.bitcast %428 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %430 = llvm.ptrtoint %429 : !llvm.ptr<i64> to i64
    %431 = llvm.mlir.constant(1 : index) : i64
    %432 = llvm.sub %426, %431  : i64
    %433 = llvm.add %430, %432  : i64
    %434 = llvm.urem %433, %426  : i64
    %435 = llvm.sub %433, %434  : i64
    %436 = llvm.inttoptr %435 : i64 to !llvm.ptr<i64>
    %437 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %438 = llvm.insertvalue %429, %437[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %439 = llvm.insertvalue %436, %438[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %440 = llvm.mlir.constant(0 : index) : i64
    %441 = llvm.insertvalue %440, %439[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %442 = llvm.insertvalue %421, %441[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %443 = llvm.insertvalue %422, %442[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %444 = llvm.mlir.constant(0 : index) : i64
    %445 = llvm.mlir.constant(4 : index) : i64
    %446 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb76(%444 : i64)
  ^bb76(%447: i64):  // 2 preds: ^bb75, ^bb77
    %448 = llvm.icmp "slt" %447, %445 : i64
    llvm.cond_br %448, ^bb77, ^bb78
  ^bb77:  // pred: ^bb76
    %449 = llvm.extractvalue %443[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %450 = llvm.getelementptr %449[%447] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %26, %450 : !llvm.ptr<i64>
    %451 = llvm.add %447, %446  : i64
    llvm.br ^bb76(%451 : i64)
  ^bb78:  // pred: ^bb76
    %452 = llvm.mlir.constant(4 : index) : i64
    %453 = llvm.mlir.constant(1 : index) : i64
    %454 = llvm.mlir.null : !llvm.ptr<i64>
    %455 = llvm.getelementptr %454[%452] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %456 = llvm.ptrtoint %455 : !llvm.ptr<i64> to i64
    %457 = llvm.mlir.constant(16 : index) : i64
    %458 = llvm.add %456, %457  : i64
    %459 = llvm.call @malloc(%458) : (i64) -> !llvm.ptr<i8>
    %460 = llvm.bitcast %459 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %461 = llvm.ptrtoint %460 : !llvm.ptr<i64> to i64
    %462 = llvm.mlir.constant(1 : index) : i64
    %463 = llvm.sub %457, %462  : i64
    %464 = llvm.add %461, %463  : i64
    %465 = llvm.urem %464, %457  : i64
    %466 = llvm.sub %464, %465  : i64
    %467 = llvm.inttoptr %466 : i64 to !llvm.ptr<i64>
    %468 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %469 = llvm.insertvalue %460, %468[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %470 = llvm.insertvalue %467, %469[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %471 = llvm.mlir.constant(0 : index) : i64
    %472 = llvm.insertvalue %471, %470[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %473 = llvm.insertvalue %452, %472[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %474 = llvm.insertvalue %453, %473[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %475 = llvm.mlir.constant(0 : index) : i64
    %476 = llvm.mlir.constant(4 : index) : i64
    %477 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb79(%475 : i64)
  ^bb79(%478: i64):  // 2 preds: ^bb78, ^bb80
    %479 = llvm.icmp "slt" %478, %476 : i64
    llvm.cond_br %479, ^bb80, ^bb81
  ^bb80:  // pred: ^bb79
    %480 = llvm.extractvalue %443[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %481 = llvm.getelementptr %480[%478] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %482 = llvm.load %481 : !llvm.ptr<i64>
    %483 = llvm.extractvalue %46[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %484 = llvm.load %483 : !llvm.ptr<i64>
    %485 = llvm.mul %482, %484  : i64
    %486 = llvm.extractvalue %474[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %487 = llvm.getelementptr %486[%478] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %485, %487 : !llvm.ptr<i64>
    %488 = llvm.add %478, %477  : i64
    llvm.br ^bb79(%488 : i64)
  ^bb81:  // pred: ^bb79
    %489 = llvm.mlir.constant(4 : index) : i64
    %490 = llvm.mlir.constant(1 : index) : i64
    %491 = llvm.mlir.null : !llvm.ptr<i1>
    %492 = llvm.getelementptr %491[%489] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %493 = llvm.ptrtoint %492 : !llvm.ptr<i1> to i64
    %494 = llvm.mlir.constant(16 : index) : i64
    %495 = llvm.add %493, %494  : i64
    %496 = llvm.call @malloc(%495) : (i64) -> !llvm.ptr<i8>
    %497 = llvm.bitcast %496 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %498 = llvm.ptrtoint %497 : !llvm.ptr<i1> to i64
    %499 = llvm.mlir.constant(1 : index) : i64
    %500 = llvm.sub %494, %499  : i64
    %501 = llvm.add %498, %500  : i64
    %502 = llvm.urem %501, %494  : i64
    %503 = llvm.sub %501, %502  : i64
    %504 = llvm.inttoptr %503 : i64 to !llvm.ptr<i1>
    %505 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)>
    %506 = llvm.insertvalue %497, %505[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %507 = llvm.insertvalue %504, %506[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %508 = llvm.mlir.constant(0 : index) : i64
    %509 = llvm.insertvalue %508, %507[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %510 = llvm.insertvalue %489, %509[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %511 = llvm.insertvalue %490, %510[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %512 = llvm.mlir.constant(0 : index) : i64
    %513 = llvm.mlir.constant(4 : index) : i64
    %514 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb82(%512 : i64)
  ^bb82(%515: i64):  // 2 preds: ^bb81, ^bb83
    %516 = llvm.icmp "slt" %515, %513 : i64
    llvm.cond_br %516, ^bb83, ^bb84
  ^bb83:  // pred: ^bb82
    %517 = llvm.extractvalue %39[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %518 = llvm.getelementptr %517[%515] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %519 = llvm.load %518 : !llvm.ptr<i64>
    %520 = llvm.extractvalue %474[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %521 = llvm.getelementptr %520[%515] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %522 = llvm.load %521 : !llvm.ptr<i64>
    %523 = llvm.icmp "eq" %519, %522 : i64
    %524 = llvm.extractvalue %511[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %525 = llvm.getelementptr %524[%515] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %523, %525 : !llvm.ptr<i1>
    %526 = llvm.add %515, %514  : i64
    llvm.br ^bb82(%526 : i64)
  ^bb84:  // pred: ^bb82
    %527 = llvm.mlir.constant(4 : index) : i64
    %528 = llvm.mlir.constant(1 : index) : i64
    %529 = llvm.mlir.null : !llvm.ptr<i64>
    %530 = llvm.getelementptr %529[%527] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %531 = llvm.ptrtoint %530 : !llvm.ptr<i64> to i64
    %532 = llvm.mlir.constant(16 : index) : i64
    %533 = llvm.add %531, %532  : i64
    %534 = llvm.call @malloc(%533) : (i64) -> !llvm.ptr<i8>
    %535 = llvm.bitcast %534 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %536 = llvm.ptrtoint %535 : !llvm.ptr<i64> to i64
    %537 = llvm.mlir.constant(1 : index) : i64
    %538 = llvm.sub %532, %537  : i64
    %539 = llvm.add %536, %538  : i64
    %540 = llvm.urem %539, %532  : i64
    %541 = llvm.sub %539, %540  : i64
    %542 = llvm.inttoptr %541 : i64 to !llvm.ptr<i64>
    %543 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %544 = llvm.insertvalue %535, %543[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %545 = llvm.insertvalue %542, %544[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %546 = llvm.mlir.constant(0 : index) : i64
    %547 = llvm.insertvalue %546, %545[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %548 = llvm.insertvalue %527, %547[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %549 = llvm.insertvalue %528, %548[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %550 = llvm.mlir.constant(0 : index) : i64
    %551 = llvm.mlir.constant(4 : index) : i64
    %552 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb85(%550 : i64)
  ^bb85(%553: i64):  // 2 preds: ^bb84, ^bb86
    %554 = llvm.icmp "slt" %553, %551 : i64
    llvm.cond_br %554, ^bb86, ^bb87
  ^bb86:  // pred: ^bb85
    %555 = llvm.extractvalue %511[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %556 = llvm.getelementptr %555[%553] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %557 = llvm.load %556 : !llvm.ptr<i1>
    %558 = llvm.extractvalue %443[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %559 = llvm.getelementptr %558[%553] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %560 = llvm.load %559 : !llvm.ptr<i64>
    %561 = llvm.extractvalue %57[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %562 = llvm.getelementptr %561[%553] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %563 = llvm.load %562 : !llvm.ptr<i64>
    %564 = llvm.select %557, %560, %563 : i1, i64
    %565 = llvm.extractvalue %549[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %566 = llvm.getelementptr %565[%553] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %564, %566 : !llvm.ptr<i64>
    %567 = llvm.add %553, %552  : i64
    llvm.br ^bb85(%567 : i64)
  ^bb87:  // pred: ^bb85
    %568 = llvm.mlir.constant(2 : index) : i64
    %569 = llvm.mlir.constant(1 : index) : i64
    %570 = llvm.mlir.constant(1 : index) : i64
    %571 = llvm.mlir.constant(1 : index) : i64
    %572 = llvm.mlir.constant(1 : index) : i64
    %573 = llvm.mlir.null : !llvm.ptr<i32>
    %574 = llvm.getelementptr %573[%568] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %575 = llvm.ptrtoint %574 : !llvm.ptr<i32> to i64
    %576 = llvm.mlir.constant(16 : index) : i64
    %577 = llvm.add %575, %576  : i64
    %578 = llvm.call @malloc(%577) : (i64) -> !llvm.ptr<i8>
    %579 = llvm.bitcast %578 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %580 = llvm.ptrtoint %579 : !llvm.ptr<i32> to i64
    %581 = llvm.mlir.constant(1 : index) : i64
    %582 = llvm.sub %576, %581  : i64
    %583 = llvm.add %580, %582  : i64
    %584 = llvm.urem %583, %576  : i64
    %585 = llvm.sub %583, %584  : i64
    %586 = llvm.inttoptr %585 : i64 to !llvm.ptr<i32>
    %587 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %588 = llvm.insertvalue %579, %587[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %589 = llvm.insertvalue %586, %588[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %590 = llvm.mlir.constant(0 : index) : i64
    %591 = llvm.insertvalue %590, %589[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %592 = llvm.insertvalue %568, %591[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %593 = llvm.insertvalue %569, %592[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %594 = llvm.insertvalue %570, %593[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %595 = llvm.insertvalue %571, %594[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %596 = llvm.insertvalue %569, %595[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %597 = llvm.insertvalue %570, %596[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %598 = llvm.insertvalue %571, %597[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %599 = llvm.insertvalue %572, %598[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %600 = llvm.mlir.constant(0 : index) : i64
    %601 = llvm.mlir.constant(2 : index) : i64
    %602 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb88(%600 : i64)
  ^bb88(%603: i64):  // 2 preds: ^bb87, ^bb98
    %604 = llvm.icmp "slt" %603, %601 : i64
    llvm.cond_br %604, ^bb89, ^bb99
  ^bb89:  // pred: ^bb88
    %605 = llvm.mlir.constant(0 : index) : i64
    %606 = llvm.mlir.constant(1 : index) : i64
    %607 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb90(%605 : i64)
  ^bb90(%608: i64):  // 2 preds: ^bb89, ^bb97
    %609 = llvm.icmp "slt" %608, %606 : i64
    llvm.cond_br %609, ^bb91, ^bb98
  ^bb91:  // pred: ^bb90
    %610 = llvm.mlir.constant(0 : index) : i64
    %611 = llvm.mlir.constant(1 : index) : i64
    %612 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb92(%610 : i64)
  ^bb92(%613: i64):  // 2 preds: ^bb91, ^bb96
    %614 = llvm.icmp "slt" %613, %611 : i64
    llvm.cond_br %614, ^bb93, ^bb97
  ^bb93:  // pred: ^bb92
    %615 = llvm.mlir.constant(0 : index) : i64
    %616 = llvm.mlir.constant(1 : index) : i64
    %617 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb94(%615 : i64)
  ^bb94(%618: i64):  // 2 preds: ^bb93, ^bb95
    %619 = llvm.icmp "slt" %618, %616 : i64
    llvm.cond_br %619, ^bb95, ^bb96
  ^bb95:  // pred: ^bb94
    %620 = llvm.extractvalue %200[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %621 = llvm.add %603, %27  : i64
    %622 = llvm.add %621, %27  : i64
    %623 = llvm.add %622, %27  : i64
    %624 = llvm.getelementptr %620[%623] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %625 = llvm.load %624 : !llvm.ptr<i32>
    %626 = llvm.extractvalue %599[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %627 = llvm.add %603, %608  : i64
    %628 = llvm.add %627, %613  : i64
    %629 = llvm.add %628, %618  : i64
    %630 = llvm.getelementptr %626[%629] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %625, %630 : !llvm.ptr<i32>
    %631 = llvm.add %618, %617  : i64
    llvm.br ^bb94(%631 : i64)
  ^bb96:  // pred: ^bb94
    %632 = llvm.add %613, %612  : i64
    llvm.br ^bb92(%632 : i64)
  ^bb97:  // pred: ^bb92
    %633 = llvm.add %608, %607  : i64
    llvm.br ^bb90(%633 : i64)
  ^bb98:  // pred: ^bb90
    %634 = llvm.add %603, %602  : i64
    llvm.br ^bb88(%634 : i64)
  ^bb99:  // pred: ^bb88
    %635 = llvm.mlir.undef : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
    %636 = llvm.insertvalue %378, %635[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %637 = llvm.insertvalue %599, %636[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    llvm.return %637 : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>>, %arg2: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) attributes {input_names = ["v6_0", "v3_0"], llvm.emit_c_interface, output_names = ["v5_0", "v1_0"]} {
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
    %14 = llvm.load %arg2 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    %15 = llvm.extractvalue %14[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %16 = llvm.extractvalue %14[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %17 = llvm.extractvalue %14[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %18 = llvm.extractvalue %14[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %19 = llvm.extractvalue %14[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %20 = llvm.extractvalue %14[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %21 = llvm.extractvalue %14[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %22 = llvm.extractvalue %14[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %23 = llvm.extractvalue %14[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %24 = llvm.extractvalue %14[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %25 = llvm.extractvalue %14[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %26 = llvm.call @main_graph(%1, %2, %3, %4, %5, %6, %7, %8, %9, %10, %11, %12, %13, %15, %16, %17, %18, %19, %20, %21, %22, %23, %24, %25) : (!llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, !llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
    llvm.store %26, %arg0 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
    llvm.return
  }
  llvm.func @run_main_graph(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.call @omTensorListGetOmtArray(%arg0) : (!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.alloca %1 x !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> : (i64) -> !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
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
    %51 = llvm.mlir.constant(1 : i64) : i64
    %52 = llvm.getelementptr %0[%51] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    %53 = llvm.load %52 : !llvm.ptr<ptr<i8>>
    %54 = llvm.alloca %1 x !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> : (i64) -> !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    %55 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %56 = llvm.call @omTensorGetDataPtr(%53) : (!llvm.ptr<i8>) -> !llvm.ptr<i8>
    %57 = llvm.bitcast %56 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %58 = llvm.insertvalue %57, %55[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %59 = llvm.insertvalue %57, %58[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %60 = llvm.mlir.constant(0 : i64) : i64
    %61 = llvm.insertvalue %60, %59[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %62 = llvm.call @omTensorGetShape(%53) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %63 = llvm.call @omTensorGetStrides(%53) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %64 = llvm.mlir.constant(0 : i64) : i64
    %65 = llvm.getelementptr %62[%64] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %66 = llvm.load %65 : !llvm.ptr<i64>
    %67 = llvm.insertvalue %66, %61[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %68 = llvm.getelementptr %63[%64] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %69 = llvm.load %68 : !llvm.ptr<i64>
    %70 = llvm.insertvalue %69, %67[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %71 = llvm.mlir.constant(1 : i64) : i64
    %72 = llvm.getelementptr %62[%71] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %73 = llvm.load %72 : !llvm.ptr<i64>
    %74 = llvm.insertvalue %73, %70[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %75 = llvm.getelementptr %63[%71] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %76 = llvm.load %75 : !llvm.ptr<i64>
    %77 = llvm.insertvalue %76, %74[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %78 = llvm.mlir.constant(2 : i64) : i64
    %79 = llvm.getelementptr %62[%78] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %80 = llvm.load %79 : !llvm.ptr<i64>
    %81 = llvm.insertvalue %80, %77[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %82 = llvm.getelementptr %63[%78] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %83 = llvm.load %82 : !llvm.ptr<i64>
    %84 = llvm.insertvalue %83, %81[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %85 = llvm.mlir.constant(3 : i64) : i64
    %86 = llvm.getelementptr %62[%85] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %87 = llvm.load %86 : !llvm.ptr<i64>
    %88 = llvm.insertvalue %87, %84[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %89 = llvm.getelementptr %63[%85] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %90 = llvm.load %89 : !llvm.ptr<i64>
    %91 = llvm.insertvalue %90, %88[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    llvm.store %91, %54 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    llvm.call @_mlir_ciface_main_graph(%2, %6, %54) : (!llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) -> ()
    %92 = llvm.load %2 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
    %93 = llvm.extractvalue %92[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %94 = llvm.extractvalue %92[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %95 = llvm.mlir.constant(2 : i64) : i64
    %96 = llvm.mlir.constant(16 : i64) : i64
    %97 = llvm.call @malloc(%96) : (i64) -> !llvm.ptr<i8>
    %98 = llvm.bitcast %97 : !llvm.ptr<i8> to !llvm.ptr<ptr<i8>>
    %99 = llvm.mlir.constant(4 : i64) : i64
    %100 = llvm.call @omTensorCreateUntyped(%99) : (i64) -> !llvm.ptr<i8>
    %101 = llvm.mlir.constant(1 : i64) : i64
    %102 = llvm.extractvalue %93[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %103 = llvm.bitcast %102 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %104 = llvm.extractvalue %93[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %105 = llvm.bitcast %104 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%100, %101, %103, %105) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %106 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%100, %106) : (!llvm.ptr<i8>, i64) -> ()
    %107 = llvm.call @omTensorGetShape(%100) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %108 = llvm.call @omTensorGetStrides(%100) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %109 = llvm.mlir.constant(0 : i64) : i64
    %110 = llvm.extractvalue %93[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %111 = llvm.getelementptr %107[%109] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %110, %111 : !llvm.ptr<i64>
    %112 = llvm.extractvalue %93[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %113 = llvm.getelementptr %108[%109] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %112, %113 : !llvm.ptr<i64>
    %114 = llvm.mlir.constant(1 : i64) : i64
    %115 = llvm.extractvalue %93[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %116 = llvm.getelementptr %107[%114] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %115, %116 : !llvm.ptr<i64>
    %117 = llvm.extractvalue %93[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %118 = llvm.getelementptr %108[%114] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %117, %118 : !llvm.ptr<i64>
    %119 = llvm.mlir.constant(2 : i64) : i64
    %120 = llvm.extractvalue %93[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %121 = llvm.getelementptr %107[%119] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %120, %121 : !llvm.ptr<i64>
    %122 = llvm.extractvalue %93[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %123 = llvm.getelementptr %108[%119] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %122, %123 : !llvm.ptr<i64>
    %124 = llvm.mlir.constant(3 : i64) : i64
    %125 = llvm.extractvalue %93[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %126 = llvm.getelementptr %107[%124] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %125, %126 : !llvm.ptr<i64>
    %127 = llvm.extractvalue %93[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %128 = llvm.getelementptr %108[%124] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %127, %128 : !llvm.ptr<i64>
    %129 = llvm.mlir.constant(0 : i64) : i64
    %130 = llvm.getelementptr %98[%129] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %100, %130 : !llvm.ptr<ptr<i8>>
    %131 = llvm.mlir.constant(4 : i64) : i64
    %132 = llvm.call @omTensorCreateUntyped(%131) : (i64) -> !llvm.ptr<i8>
    %133 = llvm.mlir.constant(1 : i64) : i64
    %134 = llvm.extractvalue %94[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %135 = llvm.bitcast %134 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %136 = llvm.extractvalue %94[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %137 = llvm.bitcast %136 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%132, %133, %135, %137) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %138 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%132, %138) : (!llvm.ptr<i8>, i64) -> ()
    %139 = llvm.call @omTensorGetShape(%132) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %140 = llvm.call @omTensorGetStrides(%132) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %141 = llvm.mlir.constant(0 : i64) : i64
    %142 = llvm.extractvalue %94[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %143 = llvm.getelementptr %139[%141] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %142, %143 : !llvm.ptr<i64>
    %144 = llvm.extractvalue %94[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %145 = llvm.getelementptr %140[%141] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %144, %145 : !llvm.ptr<i64>
    %146 = llvm.mlir.constant(1 : i64) : i64
    %147 = llvm.extractvalue %94[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %148 = llvm.getelementptr %139[%146] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %147, %148 : !llvm.ptr<i64>
    %149 = llvm.extractvalue %94[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %150 = llvm.getelementptr %140[%146] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %149, %150 : !llvm.ptr<i64>
    %151 = llvm.mlir.constant(2 : i64) : i64
    %152 = llvm.extractvalue %94[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %153 = llvm.getelementptr %139[%151] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %152, %153 : !llvm.ptr<i64>
    %154 = llvm.extractvalue %94[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %155 = llvm.getelementptr %140[%151] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %154, %155 : !llvm.ptr<i64>
    %156 = llvm.mlir.constant(3 : i64) : i64
    %157 = llvm.extractvalue %94[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %158 = llvm.getelementptr %139[%156] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %157, %158 : !llvm.ptr<i64>
    %159 = llvm.extractvalue %94[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %160 = llvm.getelementptr %140[%156] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %159, %160 : !llvm.ptr<i64>
    %161 = llvm.mlir.constant(1 : i64) : i64
    %162 = llvm.getelementptr %98[%161] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %132, %162 : !llvm.ptr<ptr<i8>>
    %163 = llvm.call @omTensorListCreate(%98, %95, %1) : (!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
    llvm.return %163 : !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_in_sig : !llvm.ptr<array<146 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<146 x i8>> to !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_out_sig : !llvm.ptr<array<141 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<141 x i8>> to !llvm.ptr<i8>
    llvm.return %8 : !llvm.ptr<i8>
  ^bb2:  // pred: ^bb0
    %9 = llvm.mlir.null : !llvm.ptr<i8>
    llvm.return %9 : !llvm.ptr<i8>
  }
}

