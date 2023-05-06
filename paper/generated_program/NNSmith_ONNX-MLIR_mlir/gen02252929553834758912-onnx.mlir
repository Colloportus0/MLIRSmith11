module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v6_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v4_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22i32\22 , \22dims\22 : [3] , \22name\22 : \22v0_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 3 , 1 , 1] , \22name\22 : \22v3_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
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
  llvm.mlir.global internal constant @constant_1(dense<5> : tensor<1x1x1x1xi32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x array<1 x array<1 x array<1 x i32>>>>
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: i64, %arg11: !llvm.ptr<i32>, %arg12: !llvm.ptr<i32>, %arg13: i64, %arg14: i64, %arg15: i64, %arg16: i64, %arg17: i64, %arg18: i64, %arg19: i64, %arg20: i64, %arg21: i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> attributes {input_names = ["v6_0", "v4_0"], llvm.emit_c_interface, output_names = ["v0_0", "v3_0"]} {
    %0 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %1 = llvm.insertvalue %arg0, %0[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %2 = llvm.insertvalue %arg1, %1[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %3 = llvm.insertvalue %arg2, %2[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %4 = llvm.insertvalue %arg3, %3[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %5 = llvm.insertvalue %arg7, %4[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %6 = llvm.insertvalue %arg4, %5[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %7 = llvm.insertvalue %arg8, %6[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %8 = llvm.insertvalue %arg5, %7[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %9 = llvm.insertvalue %arg9, %8[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %10 = llvm.insertvalue %arg6, %9[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %11 = llvm.insertvalue %arg10, %10[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %12 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %13 = llvm.insertvalue %arg11, %12[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %14 = llvm.insertvalue %arg12, %13[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %15 = llvm.insertvalue %arg13, %14[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %16 = llvm.insertvalue %arg14, %15[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %17 = llvm.insertvalue %arg18, %16[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %18 = llvm.insertvalue %arg15, %17[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %19 = llvm.insertvalue %arg19, %18[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %20 = llvm.insertvalue %arg16, %19[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %21 = llvm.insertvalue %arg20, %20[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %22 = llvm.insertvalue %arg17, %21[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %23 = llvm.insertvalue %arg21, %22[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %24 = llvm.mlir.constant(-2147483648 : i32) : i32
    %25 = llvm.mlir.addressof @constant_1 : !llvm.ptr<array<1 x array<1 x array<1 x array<1 x i32>>>>>
    %26 = llvm.bitcast %25 : !llvm.ptr<array<1 x array<1 x array<1 x array<1 x i32>>>>> to !llvm.ptr<i32>
    %27 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %28 = llvm.insertvalue %26, %27[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %29 = llvm.insertvalue %26, %28[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %30 = llvm.mlir.constant(0 : index) : i64
    %31 = llvm.insertvalue %30, %29[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %32 = llvm.mlir.constant(1 : index) : i64
    %33 = llvm.insertvalue %32, %31[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %34 = llvm.mlir.constant(1 : index) : i64
    %35 = llvm.insertvalue %34, %33[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %36 = llvm.mlir.constant(1 : index) : i64
    %37 = llvm.insertvalue %36, %35[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %38 = llvm.mlir.constant(1 : index) : i64
    %39 = llvm.insertvalue %38, %37[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %40 = llvm.mlir.constant(1 : index) : i64
    %41 = llvm.insertvalue %40, %39[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %42 = llvm.mlir.constant(1 : index) : i64
    %43 = llvm.insertvalue %42, %41[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %44 = llvm.mlir.constant(1 : index) : i64
    %45 = llvm.insertvalue %44, %43[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %46 = llvm.mlir.constant(1 : index) : i64
    %47 = llvm.insertvalue %46, %45[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %48 = llvm.mlir.constant(1 : index) : i64
    %49 = llvm.mlir.constant(3 : index) : i64
    %50 = llvm.mlir.constant(1 : index) : i64
    %51 = llvm.mlir.constant(1 : index) : i64
    %52 = llvm.mlir.constant(1 : index) : i64
    %53 = llvm.mlir.constant(3 : index) : i64
    %54 = llvm.mlir.null : !llvm.ptr<i32>
    %55 = llvm.getelementptr %54[%53] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %56 = llvm.ptrtoint %55 : !llvm.ptr<i32> to i64
    %57 = llvm.mlir.constant(16 : index) : i64
    %58 = llvm.add %56, %57  : i64
    %59 = llvm.call @malloc(%58) : (i64) -> !llvm.ptr<i8>
    %60 = llvm.bitcast %59 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %61 = llvm.ptrtoint %60 : !llvm.ptr<i32> to i64
    %62 = llvm.mlir.constant(1 : index) : i64
    %63 = llvm.sub %57, %62  : i64
    %64 = llvm.add %61, %63  : i64
    %65 = llvm.urem %64, %57  : i64
    %66 = llvm.sub %64, %65  : i64
    %67 = llvm.inttoptr %66 : i64 to !llvm.ptr<i32>
    %68 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %69 = llvm.insertvalue %60, %68[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %70 = llvm.insertvalue %67, %69[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %71 = llvm.mlir.constant(0 : index) : i64
    %72 = llvm.insertvalue %71, %70[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %73 = llvm.insertvalue %48, %72[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %74 = llvm.insertvalue %49, %73[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %75 = llvm.insertvalue %50, %74[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %76 = llvm.insertvalue %51, %75[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %77 = llvm.insertvalue %49, %76[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %78 = llvm.insertvalue %50, %77[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %79 = llvm.insertvalue %51, %78[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %80 = llvm.insertvalue %52, %79[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %81 = llvm.mlir.constant(0 : index) : i64
    %82 = llvm.mlir.constant(1 : index) : i64
    %83 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%81 : i64)
  ^bb1(%84: i64):  // 2 preds: ^bb0, ^bb11
    %85 = llvm.icmp "slt" %84, %82 : i64
    llvm.cond_br %85, ^bb2, ^bb12
  ^bb2:  // pred: ^bb1
    %86 = llvm.mlir.constant(0 : index) : i64
    %87 = llvm.mlir.constant(1 : index) : i64
    %88 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb3(%86 : i64)
  ^bb3(%89: i64):  // 2 preds: ^bb2, ^bb10
    %90 = llvm.icmp "slt" %89, %87 : i64
    llvm.cond_br %90, ^bb4, ^bb11
  ^bb4:  // pred: ^bb3
    %91 = llvm.mlir.constant(0 : index) : i64
    %92 = llvm.mlir.constant(1 : index) : i64
    %93 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb5(%91 : i64)
  ^bb5(%94: i64):  // 2 preds: ^bb4, ^bb9
    %95 = llvm.icmp "slt" %94, %92 : i64
    llvm.cond_br %95, ^bb6, ^bb10
  ^bb6:  // pred: ^bb5
    %96 = llvm.mlir.constant(0 : index) : i64
    %97 = llvm.mlir.constant(1 : index) : i64
    %98 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb7(%96 : i64)
  ^bb7(%99: i64):  // 2 preds: ^bb6, ^bb8
    %100 = llvm.icmp "slt" %99, %97 : i64
    llvm.cond_br %100, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %101 = llvm.extractvalue %23[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %102 = llvm.add %84, %89  : i64
    %103 = llvm.add %102, %94  : i64
    %104 = llvm.add %103, %99  : i64
    %105 = llvm.getelementptr %101[%104] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %106 = llvm.load %105 : !llvm.ptr<i32>
    %107 = llvm.extractvalue %80[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %108 = llvm.mlir.constant(3 : index) : i64
    %109 = llvm.mul %84, %108  : i64
    %110 = llvm.add %109, %89  : i64
    %111 = llvm.add %110, %94  : i64
    %112 = llvm.add %111, %99  : i64
    %113 = llvm.getelementptr %107[%112] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %106, %113 : !llvm.ptr<i32>
    %114 = llvm.add %99, %98  : i64
    llvm.br ^bb7(%114 : i64)
  ^bb9:  // pred: ^bb7
    %115 = llvm.add %94, %93  : i64
    llvm.br ^bb5(%115 : i64)
  ^bb10:  // pred: ^bb5
    %116 = llvm.add %89, %88  : i64
    llvm.br ^bb3(%116 : i64)
  ^bb11:  // pred: ^bb3
    %117 = llvm.add %84, %83  : i64
    llvm.br ^bb1(%117 : i64)
  ^bb12:  // pred: ^bb1
    %118 = llvm.mlir.constant(0 : index) : i64
    %119 = llvm.mlir.constant(1 : index) : i64
    %120 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb13(%118 : i64)
  ^bb13(%121: i64):  // 2 preds: ^bb12, ^bb23
    %122 = llvm.icmp "slt" %121, %119 : i64
    llvm.cond_br %122, ^bb14, ^bb24
  ^bb14:  // pred: ^bb13
    %123 = llvm.mlir.constant(0 : index) : i64
    %124 = llvm.mlir.constant(1 : index) : i64
    %125 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb15(%123 : i64)
  ^bb15(%126: i64):  // 2 preds: ^bb14, ^bb22
    %127 = llvm.icmp "slt" %126, %124 : i64
    llvm.cond_br %127, ^bb16, ^bb23
  ^bb16:  // pred: ^bb15
    %128 = llvm.mlir.constant(0 : index) : i64
    %129 = llvm.mlir.constant(1 : index) : i64
    %130 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb17(%128 : i64)
  ^bb17(%131: i64):  // 2 preds: ^bb16, ^bb21
    %132 = llvm.icmp "slt" %131, %129 : i64
    llvm.cond_br %132, ^bb18, ^bb22
  ^bb18:  // pred: ^bb17
    %133 = llvm.mlir.constant(0 : index) : i64
    %134 = llvm.mlir.constant(1 : index) : i64
    %135 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb19(%133 : i64)
  ^bb19(%136: i64):  // 2 preds: ^bb18, ^bb20
    %137 = llvm.icmp "slt" %136, %134 : i64
    llvm.cond_br %137, ^bb20, ^bb21
  ^bb20:  // pred: ^bb19
    %138 = llvm.mlir.constant(1 : index) : i64
    %139 = llvm.add %126, %138  : i64
    %140 = llvm.extractvalue %47[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %141 = llvm.add %121, %126  : i64
    %142 = llvm.add %141, %131  : i64
    %143 = llvm.add %142, %136  : i64
    %144 = llvm.getelementptr %140[%143] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %145 = llvm.load %144 : !llvm.ptr<i32>
    %146 = llvm.extractvalue %80[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %147 = llvm.mlir.constant(3 : index) : i64
    %148 = llvm.mul %121, %147  : i64
    %149 = llvm.add %148, %139  : i64
    %150 = llvm.add %149, %131  : i64
    %151 = llvm.add %150, %136  : i64
    %152 = llvm.getelementptr %146[%151] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %145, %152 : !llvm.ptr<i32>
    %153 = llvm.add %136, %135  : i64
    llvm.br ^bb19(%153 : i64)
  ^bb21:  // pred: ^bb19
    %154 = llvm.add %131, %130  : i64
    llvm.br ^bb17(%154 : i64)
  ^bb22:  // pred: ^bb17
    %155 = llvm.add %126, %125  : i64
    llvm.br ^bb15(%155 : i64)
  ^bb23:  // pred: ^bb15
    %156 = llvm.add %121, %120  : i64
    llvm.br ^bb13(%156 : i64)
  ^bb24:  // pred: ^bb13
    %157 = llvm.mlir.constant(0 : index) : i64
    %158 = llvm.mlir.constant(1 : index) : i64
    %159 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb25(%157 : i64)
  ^bb25(%160: i64):  // 2 preds: ^bb24, ^bb35
    %161 = llvm.icmp "slt" %160, %158 : i64
    llvm.cond_br %161, ^bb26, ^bb36
  ^bb26:  // pred: ^bb25
    %162 = llvm.mlir.constant(0 : index) : i64
    %163 = llvm.mlir.constant(1 : index) : i64
    %164 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb27(%162 : i64)
  ^bb27(%165: i64):  // 2 preds: ^bb26, ^bb34
    %166 = llvm.icmp "slt" %165, %163 : i64
    llvm.cond_br %166, ^bb28, ^bb35
  ^bb28:  // pred: ^bb27
    %167 = llvm.mlir.constant(0 : index) : i64
    %168 = llvm.mlir.constant(1 : index) : i64
    %169 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb29(%167 : i64)
  ^bb29(%170: i64):  // 2 preds: ^bb28, ^bb33
    %171 = llvm.icmp "slt" %170, %168 : i64
    llvm.cond_br %171, ^bb30, ^bb34
  ^bb30:  // pred: ^bb29
    %172 = llvm.mlir.constant(0 : index) : i64
    %173 = llvm.mlir.constant(1 : index) : i64
    %174 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb31(%172 : i64)
  ^bb31(%175: i64):  // 2 preds: ^bb30, ^bb32
    %176 = llvm.icmp "slt" %175, %173 : i64
    llvm.cond_br %176, ^bb32, ^bb33
  ^bb32:  // pred: ^bb31
    %177 = llvm.mlir.constant(2 : index) : i64
    %178 = llvm.add %165, %177  : i64
    %179 = llvm.extractvalue %11[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %180 = llvm.add %160, %165  : i64
    %181 = llvm.add %180, %170  : i64
    %182 = llvm.add %181, %175  : i64
    %183 = llvm.getelementptr %179[%182] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %184 = llvm.load %183 : !llvm.ptr<i32>
    %185 = llvm.extractvalue %80[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %186 = llvm.mlir.constant(3 : index) : i64
    %187 = llvm.mul %160, %186  : i64
    %188 = llvm.add %187, %178  : i64
    %189 = llvm.add %188, %170  : i64
    %190 = llvm.add %189, %175  : i64
    %191 = llvm.getelementptr %185[%190] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %184, %191 : !llvm.ptr<i32>
    %192 = llvm.add %175, %174  : i64
    llvm.br ^bb31(%192 : i64)
  ^bb33:  // pred: ^bb31
    %193 = llvm.add %170, %169  : i64
    llvm.br ^bb29(%193 : i64)
  ^bb34:  // pred: ^bb29
    %194 = llvm.add %165, %164  : i64
    llvm.br ^bb27(%194 : i64)
  ^bb35:  // pred: ^bb27
    %195 = llvm.add %160, %159  : i64
    llvm.br ^bb25(%195 : i64)
  ^bb36:  // pred: ^bb25
    %196 = llvm.mlir.constant(3 : index) : i64
    %197 = llvm.mlir.constant(1 : index) : i64
    %198 = llvm.mlir.constant(1 : index) : i64
    %199 = llvm.mlir.constant(1 : index) : i64
    %200 = llvm.mlir.null : !llvm.ptr<i32>
    %201 = llvm.getelementptr %200[%196] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %202 = llvm.ptrtoint %201 : !llvm.ptr<i32> to i64
    %203 = llvm.mlir.constant(16 : index) : i64
    %204 = llvm.add %202, %203  : i64
    %205 = llvm.call @malloc(%204) : (i64) -> !llvm.ptr<i8>
    %206 = llvm.bitcast %205 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %207 = llvm.ptrtoint %206 : !llvm.ptr<i32> to i64
    %208 = llvm.mlir.constant(1 : index) : i64
    %209 = llvm.sub %203, %208  : i64
    %210 = llvm.add %207, %209  : i64
    %211 = llvm.urem %210, %203  : i64
    %212 = llvm.sub %210, %211  : i64
    %213 = llvm.inttoptr %212 : i64 to !llvm.ptr<i32>
    %214 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>
    %215 = llvm.insertvalue %206, %214[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %216 = llvm.insertvalue %213, %215[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %217 = llvm.mlir.constant(0 : index) : i64
    %218 = llvm.insertvalue %217, %216[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %219 = llvm.insertvalue %196, %218[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %220 = llvm.insertvalue %197, %219[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %221 = llvm.insertvalue %198, %220[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %222 = llvm.insertvalue %197, %221[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %223 = llvm.insertvalue %198, %222[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %224 = llvm.insertvalue %199, %223[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %225 = llvm.mlir.constant(0 : index) : i64
    %226 = llvm.mlir.constant(3 : index) : i64
    %227 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb37(%225 : i64)
  ^bb37(%228: i64):  // 2 preds: ^bb36, ^bb44
    %229 = llvm.icmp "slt" %228, %226 : i64
    llvm.cond_br %229, ^bb38, ^bb45
  ^bb38:  // pred: ^bb37
    %230 = llvm.mlir.constant(0 : index) : i64
    %231 = llvm.mlir.constant(1 : index) : i64
    %232 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb39(%230 : i64)
  ^bb39(%233: i64):  // 2 preds: ^bb38, ^bb43
    %234 = llvm.icmp "slt" %233, %231 : i64
    llvm.cond_br %234, ^bb40, ^bb44
  ^bb40:  // pred: ^bb39
    %235 = llvm.mlir.constant(0 : index) : i64
    %236 = llvm.mlir.constant(1 : index) : i64
    %237 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb41(%235 : i64)
  ^bb41(%238: i64):  // 2 preds: ^bb40, ^bb42
    %239 = llvm.icmp "slt" %238, %236 : i64
    llvm.cond_br %239, ^bb42, ^bb43
  ^bb42:  // pred: ^bb41
    %240 = llvm.extractvalue %224[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %241 = llvm.add %228, %233  : i64
    %242 = llvm.add %241, %238  : i64
    %243 = llvm.getelementptr %240[%242] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %24, %243 : !llvm.ptr<i32>
    %244 = llvm.add %238, %237  : i64
    llvm.br ^bb41(%244 : i64)
  ^bb43:  // pred: ^bb41
    %245 = llvm.add %233, %232  : i64
    llvm.br ^bb39(%245 : i64)
  ^bb44:  // pred: ^bb39
    %246 = llvm.add %228, %227  : i64
    llvm.br ^bb37(%246 : i64)
  ^bb45:  // pred: ^bb37
    %247 = llvm.mlir.constant(0 : index) : i64
    %248 = llvm.mlir.constant(1 : index) : i64
    %249 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb46(%247 : i64)
  ^bb46(%250: i64):  // 2 preds: ^bb45, ^bb56
    %251 = llvm.icmp "slt" %250, %248 : i64
    llvm.cond_br %251, ^bb47, ^bb57
  ^bb47:  // pred: ^bb46
    %252 = llvm.mlir.constant(0 : index) : i64
    %253 = llvm.mlir.constant(3 : index) : i64
    %254 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb48(%252 : i64)
  ^bb48(%255: i64):  // 2 preds: ^bb47, ^bb55
    %256 = llvm.icmp "slt" %255, %253 : i64
    llvm.cond_br %256, ^bb49, ^bb56
  ^bb49:  // pred: ^bb48
    %257 = llvm.mlir.constant(0 : index) : i64
    %258 = llvm.mlir.constant(1 : index) : i64
    %259 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb50(%257 : i64)
  ^bb50(%260: i64):  // 2 preds: ^bb49, ^bb54
    %261 = llvm.icmp "slt" %260, %258 : i64
    llvm.cond_br %261, ^bb51, ^bb55
  ^bb51:  // pred: ^bb50
    %262 = llvm.mlir.constant(0 : index) : i64
    %263 = llvm.mlir.constant(1 : index) : i64
    %264 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb52(%262 : i64)
  ^bb52(%265: i64):  // 2 preds: ^bb51, ^bb53
    %266 = llvm.icmp "slt" %265, %263 : i64
    llvm.cond_br %266, ^bb53, ^bb54
  ^bb53:  // pred: ^bb52
    %267 = llvm.extractvalue %80[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %268 = llvm.mlir.constant(3 : index) : i64
    %269 = llvm.mul %250, %268  : i64
    %270 = llvm.add %269, %255  : i64
    %271 = llvm.add %270, %260  : i64
    %272 = llvm.add %271, %265  : i64
    %273 = llvm.getelementptr %267[%272] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %274 = llvm.load %273 : !llvm.ptr<i32>
    %275 = llvm.extractvalue %224[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %276 = llvm.add %255, %260  : i64
    %277 = llvm.add %276, %265  : i64
    %278 = llvm.getelementptr %275[%277] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %279 = llvm.load %278 : !llvm.ptr<i32>
    %280 = llvm.icmp "sgt" %279, %274 : i32
    %281 = llvm.select %280, %279, %274 : i1, i32
    %282 = llvm.extractvalue %224[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %283 = llvm.add %255, %260  : i64
    %284 = llvm.add %283, %265  : i64
    %285 = llvm.getelementptr %282[%284] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %281, %285 : !llvm.ptr<i32>
    %286 = llvm.add %265, %264  : i64
    llvm.br ^bb52(%286 : i64)
  ^bb54:  // pred: ^bb52
    %287 = llvm.add %260, %259  : i64
    llvm.br ^bb50(%287 : i64)
  ^bb55:  // pred: ^bb50
    %288 = llvm.add %255, %254  : i64
    llvm.br ^bb48(%288 : i64)
  ^bb56:  // pred: ^bb48
    %289 = llvm.add %250, %249  : i64
    llvm.br ^bb46(%289 : i64)
  ^bb57:  // pred: ^bb46
    %290 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %291 = llvm.extractvalue %224[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %292 = llvm.extractvalue %224[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %293 = llvm.insertvalue %291, %290[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %294 = llvm.insertvalue %292, %293[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %295 = llvm.mlir.constant(0 : index) : i64
    %296 = llvm.insertvalue %295, %294[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %297 = llvm.mlir.constant(3 : index) : i64
    %298 = llvm.insertvalue %297, %296[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %299 = llvm.mlir.constant(1 : index) : i64
    %300 = llvm.insertvalue %299, %298[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %301 = llvm.mlir.constant(1 : index) : i64
    %302 = llvm.mlir.constant(3 : index) : i64
    %303 = llvm.mlir.constant(1 : index) : i64
    %304 = llvm.mlir.constant(1 : index) : i64
    %305 = llvm.mlir.constant(1 : index) : i64
    %306 = llvm.mlir.constant(3 : index) : i64
    %307 = llvm.mlir.null : !llvm.ptr<i32>
    %308 = llvm.getelementptr %307[%306] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %309 = llvm.ptrtoint %308 : !llvm.ptr<i32> to i64
    %310 = llvm.mlir.constant(16 : index) : i64
    %311 = llvm.add %309, %310  : i64
    %312 = llvm.call @malloc(%311) : (i64) -> !llvm.ptr<i8>
    %313 = llvm.bitcast %312 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %314 = llvm.ptrtoint %313 : !llvm.ptr<i32> to i64
    %315 = llvm.mlir.constant(1 : index) : i64
    %316 = llvm.sub %310, %315  : i64
    %317 = llvm.add %314, %316  : i64
    %318 = llvm.urem %317, %310  : i64
    %319 = llvm.sub %317, %318  : i64
    %320 = llvm.inttoptr %319 : i64 to !llvm.ptr<i32>
    %321 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %322 = llvm.insertvalue %313, %321[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %323 = llvm.insertvalue %320, %322[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %324 = llvm.mlir.constant(0 : index) : i64
    %325 = llvm.insertvalue %324, %323[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %326 = llvm.insertvalue %301, %325[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %327 = llvm.insertvalue %302, %326[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %328 = llvm.insertvalue %303, %327[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %329 = llvm.insertvalue %304, %328[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %330 = llvm.insertvalue %302, %329[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %331 = llvm.insertvalue %303, %330[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %332 = llvm.insertvalue %304, %331[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %333 = llvm.insertvalue %305, %332[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %334 = llvm.mlir.constant(0 : index) : i64
    %335 = llvm.mlir.constant(1 : index) : i64
    %336 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb58(%334 : i64)
  ^bb58(%337: i64):  // 2 preds: ^bb57, ^bb68
    %338 = llvm.icmp "slt" %337, %335 : i64
    llvm.cond_br %338, ^bb59, ^bb69
  ^bb59:  // pred: ^bb58
    %339 = llvm.mlir.constant(0 : index) : i64
    %340 = llvm.mlir.constant(3 : index) : i64
    %341 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb60(%339 : i64)
  ^bb60(%342: i64):  // 2 preds: ^bb59, ^bb67
    %343 = llvm.icmp "slt" %342, %340 : i64
    llvm.cond_br %343, ^bb61, ^bb68
  ^bb61:  // pred: ^bb60
    %344 = llvm.mlir.constant(0 : index) : i64
    %345 = llvm.mlir.constant(1 : index) : i64
    %346 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb62(%344 : i64)
  ^bb62(%347: i64):  // 2 preds: ^bb61, ^bb66
    %348 = llvm.icmp "slt" %347, %345 : i64
    llvm.cond_br %348, ^bb63, ^bb67
  ^bb63:  // pred: ^bb62
    %349 = llvm.mlir.constant(0 : index) : i64
    %350 = llvm.mlir.constant(1 : index) : i64
    %351 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb64(%349 : i64)
  ^bb64(%352: i64):  // 2 preds: ^bb63, ^bb65
    %353 = llvm.icmp "slt" %352, %350 : i64
    llvm.cond_br %353, ^bb65, ^bb66
  ^bb65:  // pred: ^bb64
    %354 = llvm.extractvalue %80[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %355 = llvm.mlir.constant(3 : index) : i64
    %356 = llvm.mul %337, %355  : i64
    %357 = llvm.add %356, %342  : i64
    %358 = llvm.add %357, %347  : i64
    %359 = llvm.add %358, %352  : i64
    %360 = llvm.getelementptr %354[%359] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %361 = llvm.load %360 : !llvm.ptr<i32>
    %362 = llvm.extractvalue %224[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %363 = llvm.add %342, %347  : i64
    %364 = llvm.add %363, %352  : i64
    %365 = llvm.getelementptr %362[%364] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %366 = llvm.load %365 : !llvm.ptr<i32>
    %367 = llvm.add %361, %366  : i32
    %368 = llvm.extractvalue %333[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %369 = llvm.mlir.constant(3 : index) : i64
    %370 = llvm.mul %337, %369  : i64
    %371 = llvm.add %370, %342  : i64
    %372 = llvm.add %371, %347  : i64
    %373 = llvm.add %372, %352  : i64
    %374 = llvm.getelementptr %368[%373] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %367, %374 : !llvm.ptr<i32>
    %375 = llvm.add %352, %351  : i64
    llvm.br ^bb64(%375 : i64)
  ^bb66:  // pred: ^bb64
    %376 = llvm.add %347, %346  : i64
    llvm.br ^bb62(%376 : i64)
  ^bb67:  // pred: ^bb62
    %377 = llvm.add %342, %341  : i64
    llvm.br ^bb60(%377 : i64)
  ^bb68:  // pred: ^bb60
    %378 = llvm.add %337, %336  : i64
    llvm.br ^bb58(%378 : i64)
  ^bb69:  // pred: ^bb58
    %379 = llvm.mlir.constant(1 : index) : i64
    %380 = llvm.mlir.constant(3 : index) : i64
    %381 = llvm.mlir.constant(1 : index) : i64
    %382 = llvm.mlir.constant(1 : index) : i64
    %383 = llvm.mlir.constant(1 : index) : i64
    %384 = llvm.mlir.constant(3 : index) : i64
    %385 = llvm.mlir.null : !llvm.ptr<i32>
    %386 = llvm.getelementptr %385[%384] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %387 = llvm.ptrtoint %386 : !llvm.ptr<i32> to i64
    %388 = llvm.mlir.constant(16 : index) : i64
    %389 = llvm.add %387, %388  : i64
    %390 = llvm.call @malloc(%389) : (i64) -> !llvm.ptr<i8>
    %391 = llvm.bitcast %390 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %392 = llvm.ptrtoint %391 : !llvm.ptr<i32> to i64
    %393 = llvm.mlir.constant(1 : index) : i64
    %394 = llvm.sub %388, %393  : i64
    %395 = llvm.add %392, %394  : i64
    %396 = llvm.urem %395, %388  : i64
    %397 = llvm.sub %395, %396  : i64
    %398 = llvm.inttoptr %397 : i64 to !llvm.ptr<i32>
    %399 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %400 = llvm.insertvalue %391, %399[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %401 = llvm.insertvalue %398, %400[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %402 = llvm.mlir.constant(0 : index) : i64
    %403 = llvm.insertvalue %402, %401[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %404 = llvm.insertvalue %379, %403[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %405 = llvm.insertvalue %380, %404[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %406 = llvm.insertvalue %381, %405[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %407 = llvm.insertvalue %382, %406[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %408 = llvm.insertvalue %380, %407[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %409 = llvm.insertvalue %381, %408[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %410 = llvm.insertvalue %382, %409[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %411 = llvm.insertvalue %383, %410[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %412 = llvm.mlir.constant(0 : index) : i64
    %413 = llvm.mlir.constant(1 : index) : i64
    %414 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb70(%412 : i64)
  ^bb70(%415: i64):  // 2 preds: ^bb69, ^bb80
    %416 = llvm.icmp "slt" %415, %413 : i64
    llvm.cond_br %416, ^bb71, ^bb81
  ^bb71:  // pred: ^bb70
    %417 = llvm.mlir.constant(0 : index) : i64
    %418 = llvm.mlir.constant(3 : index) : i64
    %419 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb72(%417 : i64)
  ^bb72(%420: i64):  // 2 preds: ^bb71, ^bb79
    %421 = llvm.icmp "slt" %420, %418 : i64
    llvm.cond_br %421, ^bb73, ^bb80
  ^bb73:  // pred: ^bb72
    %422 = llvm.mlir.constant(0 : index) : i64
    %423 = llvm.mlir.constant(1 : index) : i64
    %424 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb74(%422 : i64)
  ^bb74(%425: i64):  // 2 preds: ^bb73, ^bb78
    %426 = llvm.icmp "slt" %425, %423 : i64
    llvm.cond_br %426, ^bb75, ^bb79
  ^bb75:  // pred: ^bb74
    %427 = llvm.mlir.constant(0 : index) : i64
    %428 = llvm.mlir.constant(1 : index) : i64
    %429 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb76(%427 : i64)
  ^bb76(%430: i64):  // 2 preds: ^bb75, ^bb77
    %431 = llvm.icmp "slt" %430, %428 : i64
    llvm.cond_br %431, ^bb77, ^bb78
  ^bb77:  // pred: ^bb76
    %432 = llvm.extractvalue %333[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %433 = llvm.mlir.constant(3 : index) : i64
    %434 = llvm.mul %415, %433  : i64
    %435 = llvm.add %434, %420  : i64
    %436 = llvm.add %435, %425  : i64
    %437 = llvm.add %436, %430  : i64
    %438 = llvm.getelementptr %432[%437] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %439 = llvm.load %438 : !llvm.ptr<i32>
    %440 = llvm.extractvalue %80[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %441 = llvm.mlir.constant(3 : index) : i64
    %442 = llvm.mul %415, %441  : i64
    %443 = llvm.add %442, %420  : i64
    %444 = llvm.add %443, %425  : i64
    %445 = llvm.add %444, %430  : i64
    %446 = llvm.getelementptr %440[%445] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %447 = llvm.load %446 : !llvm.ptr<i32>
    %448 = llvm.add %439, %447  : i32
    %449 = llvm.extractvalue %411[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %450 = llvm.mlir.constant(3 : index) : i64
    %451 = llvm.mul %415, %450  : i64
    %452 = llvm.add %451, %420  : i64
    %453 = llvm.add %452, %425  : i64
    %454 = llvm.add %453, %430  : i64
    %455 = llvm.getelementptr %449[%454] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %448, %455 : !llvm.ptr<i32>
    %456 = llvm.add %430, %429  : i64
    llvm.br ^bb76(%456 : i64)
  ^bb78:  // pred: ^bb76
    %457 = llvm.add %425, %424  : i64
    llvm.br ^bb74(%457 : i64)
  ^bb79:  // pred: ^bb74
    %458 = llvm.add %420, %419  : i64
    llvm.br ^bb72(%458 : i64)
  ^bb80:  // pred: ^bb72
    %459 = llvm.add %415, %414  : i64
    llvm.br ^bb70(%459 : i64)
  ^bb81:  // pred: ^bb70
    %460 = llvm.mlir.undef : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
    %461 = llvm.insertvalue %300, %460[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %462 = llvm.insertvalue %411, %461[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    llvm.return %462 : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, %arg2: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) attributes {input_names = ["v6_0", "v4_0"], llvm.emit_c_interface, output_names = ["v0_0", "v3_0"]} {
    %0 = llvm.load %arg1 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    %1 = llvm.extractvalue %0[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %2 = llvm.extractvalue %0[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %3 = llvm.extractvalue %0[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %4 = llvm.extractvalue %0[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %5 = llvm.extractvalue %0[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %6 = llvm.extractvalue %0[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %7 = llvm.extractvalue %0[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %8 = llvm.extractvalue %0[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %9 = llvm.extractvalue %0[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %10 = llvm.extractvalue %0[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %11 = llvm.extractvalue %0[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %12 = llvm.load %arg2 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    %13 = llvm.extractvalue %12[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %14 = llvm.extractvalue %12[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %15 = llvm.extractvalue %12[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %16 = llvm.extractvalue %12[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %17 = llvm.extractvalue %12[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %18 = llvm.extractvalue %12[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %19 = llvm.extractvalue %12[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %20 = llvm.extractvalue %12[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %21 = llvm.extractvalue %12[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %22 = llvm.extractvalue %12[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %23 = llvm.extractvalue %12[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %24 = llvm.call @main_graph(%1, %2, %3, %4, %5, %6, %7, %8, %9, %10, %11, %13, %14, %15, %16, %17, %18, %19, %20, %21, %22, %23) : (!llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64, !llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
    llvm.store %24, %arg0 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
    llvm.return
  }
  llvm.func @run_main_graph(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.call @omTensorListGetOmtArray(%arg0) : (!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.alloca %1 x !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> : (i64) -> !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
    %3 = llvm.mlir.constant(0 : i64) : i64
    %4 = llvm.getelementptr %0[%3] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    %5 = llvm.load %4 : !llvm.ptr<ptr<i8>>
    %6 = llvm.alloca %1 x !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> : (i64) -> !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    %7 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %8 = llvm.call @omTensorGetDataPtr(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i8>
    %9 = llvm.bitcast %8 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %10 = llvm.insertvalue %9, %7[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %11 = llvm.insertvalue %9, %10[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %12 = llvm.mlir.constant(0 : i64) : i64
    %13 = llvm.insertvalue %12, %11[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %14 = llvm.call @omTensorGetShape(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %15 = llvm.call @omTensorGetStrides(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %16 = llvm.mlir.constant(0 : i64) : i64
    %17 = llvm.getelementptr %14[%16] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %18 = llvm.load %17 : !llvm.ptr<i64>
    %19 = llvm.insertvalue %18, %13[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %20 = llvm.getelementptr %15[%16] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %21 = llvm.load %20 : !llvm.ptr<i64>
    %22 = llvm.insertvalue %21, %19[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %23 = llvm.mlir.constant(1 : i64) : i64
    %24 = llvm.getelementptr %14[%23] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %25 = llvm.load %24 : !llvm.ptr<i64>
    %26 = llvm.insertvalue %25, %22[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %27 = llvm.getelementptr %15[%23] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %28 = llvm.load %27 : !llvm.ptr<i64>
    %29 = llvm.insertvalue %28, %26[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %30 = llvm.mlir.constant(2 : i64) : i64
    %31 = llvm.getelementptr %14[%30] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %32 = llvm.load %31 : !llvm.ptr<i64>
    %33 = llvm.insertvalue %32, %29[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %34 = llvm.getelementptr %15[%30] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %35 = llvm.load %34 : !llvm.ptr<i64>
    %36 = llvm.insertvalue %35, %33[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %37 = llvm.mlir.constant(3 : i64) : i64
    %38 = llvm.getelementptr %14[%37] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %39 = llvm.load %38 : !llvm.ptr<i64>
    %40 = llvm.insertvalue %39, %36[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %41 = llvm.getelementptr %15[%37] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %42 = llvm.load %41 : !llvm.ptr<i64>
    %43 = llvm.insertvalue %42, %40[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    llvm.store %43, %6 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    %44 = llvm.mlir.constant(1 : i64) : i64
    %45 = llvm.getelementptr %0[%44] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    %46 = llvm.load %45 : !llvm.ptr<ptr<i8>>
    %47 = llvm.alloca %1 x !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> : (i64) -> !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    %48 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %49 = llvm.call @omTensorGetDataPtr(%46) : (!llvm.ptr<i8>) -> !llvm.ptr<i8>
    %50 = llvm.bitcast %49 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %51 = llvm.insertvalue %50, %48[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %52 = llvm.insertvalue %50, %51[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %53 = llvm.mlir.constant(0 : i64) : i64
    %54 = llvm.insertvalue %53, %52[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %55 = llvm.call @omTensorGetShape(%46) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %56 = llvm.call @omTensorGetStrides(%46) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %57 = llvm.mlir.constant(0 : i64) : i64
    %58 = llvm.getelementptr %55[%57] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %59 = llvm.load %58 : !llvm.ptr<i64>
    %60 = llvm.insertvalue %59, %54[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %61 = llvm.getelementptr %56[%57] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %62 = llvm.load %61 : !llvm.ptr<i64>
    %63 = llvm.insertvalue %62, %60[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %64 = llvm.mlir.constant(1 : i64) : i64
    %65 = llvm.getelementptr %55[%64] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %66 = llvm.load %65 : !llvm.ptr<i64>
    %67 = llvm.insertvalue %66, %63[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %68 = llvm.getelementptr %56[%64] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %69 = llvm.load %68 : !llvm.ptr<i64>
    %70 = llvm.insertvalue %69, %67[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %71 = llvm.mlir.constant(2 : i64) : i64
    %72 = llvm.getelementptr %55[%71] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %73 = llvm.load %72 : !llvm.ptr<i64>
    %74 = llvm.insertvalue %73, %70[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %75 = llvm.getelementptr %56[%71] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %76 = llvm.load %75 : !llvm.ptr<i64>
    %77 = llvm.insertvalue %76, %74[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %78 = llvm.mlir.constant(3 : i64) : i64
    %79 = llvm.getelementptr %55[%78] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %80 = llvm.load %79 : !llvm.ptr<i64>
    %81 = llvm.insertvalue %80, %77[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %82 = llvm.getelementptr %56[%78] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %83 = llvm.load %82 : !llvm.ptr<i64>
    %84 = llvm.insertvalue %83, %81[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    llvm.store %84, %47 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    llvm.call @_mlir_ciface_main_graph(%2, %6, %47) : (!llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) -> ()
    %85 = llvm.load %2 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
    %86 = llvm.extractvalue %85[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %87 = llvm.extractvalue %85[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %88 = llvm.mlir.constant(2 : i64) : i64
    %89 = llvm.mlir.constant(16 : i64) : i64
    %90 = llvm.call @malloc(%89) : (i64) -> !llvm.ptr<i8>
    %91 = llvm.bitcast %90 : !llvm.ptr<i8> to !llvm.ptr<ptr<i8>>
    %92 = llvm.mlir.constant(1 : i64) : i64
    %93 = llvm.call @omTensorCreateUntyped(%92) : (i64) -> !llvm.ptr<i8>
    %94 = llvm.mlir.constant(1 : i64) : i64
    %95 = llvm.extractvalue %86[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %96 = llvm.bitcast %95 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %97 = llvm.extractvalue %86[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %98 = llvm.bitcast %97 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%93, %94, %96, %98) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %99 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%93, %99) : (!llvm.ptr<i8>, i64) -> ()
    %100 = llvm.call @omTensorGetShape(%93) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %101 = llvm.call @omTensorGetStrides(%93) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %102 = llvm.mlir.constant(0 : i64) : i64
    %103 = llvm.extractvalue %86[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %104 = llvm.getelementptr %100[%102] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %103, %104 : !llvm.ptr<i64>
    %105 = llvm.extractvalue %86[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %106 = llvm.getelementptr %101[%102] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %105, %106 : !llvm.ptr<i64>
    %107 = llvm.mlir.constant(0 : i64) : i64
    %108 = llvm.getelementptr %91[%107] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %93, %108 : !llvm.ptr<ptr<i8>>
    %109 = llvm.mlir.constant(4 : i64) : i64
    %110 = llvm.call @omTensorCreateUntyped(%109) : (i64) -> !llvm.ptr<i8>
    %111 = llvm.mlir.constant(1 : i64) : i64
    %112 = llvm.extractvalue %87[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %113 = llvm.bitcast %112 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %114 = llvm.extractvalue %87[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %115 = llvm.bitcast %114 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%110, %111, %113, %115) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %116 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%110, %116) : (!llvm.ptr<i8>, i64) -> ()
    %117 = llvm.call @omTensorGetShape(%110) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %118 = llvm.call @omTensorGetStrides(%110) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %119 = llvm.mlir.constant(0 : i64) : i64
    %120 = llvm.extractvalue %87[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %121 = llvm.getelementptr %117[%119] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %120, %121 : !llvm.ptr<i64>
    %122 = llvm.extractvalue %87[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %123 = llvm.getelementptr %118[%119] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %122, %123 : !llvm.ptr<i64>
    %124 = llvm.mlir.constant(1 : i64) : i64
    %125 = llvm.extractvalue %87[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %126 = llvm.getelementptr %117[%124] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %125, %126 : !llvm.ptr<i64>
    %127 = llvm.extractvalue %87[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %128 = llvm.getelementptr %118[%124] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %127, %128 : !llvm.ptr<i64>
    %129 = llvm.mlir.constant(2 : i64) : i64
    %130 = llvm.extractvalue %87[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %131 = llvm.getelementptr %117[%129] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %130, %131 : !llvm.ptr<i64>
    %132 = llvm.extractvalue %87[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %133 = llvm.getelementptr %118[%129] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %132, %133 : !llvm.ptr<i64>
    %134 = llvm.mlir.constant(3 : i64) : i64
    %135 = llvm.extractvalue %87[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %136 = llvm.getelementptr %117[%134] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %135, %136 : !llvm.ptr<i64>
    %137 = llvm.extractvalue %87[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %138 = llvm.getelementptr %118[%134] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %137, %138 : !llvm.ptr<i64>
    %139 = llvm.mlir.constant(1 : i64) : i64
    %140 = llvm.getelementptr %91[%139] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %110, %140 : !llvm.ptr<ptr<i8>>
    %141 = llvm.call @omTensorListCreate(%91, %88, %1) : (!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
    llvm.return %141 : !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_in_sig : !llvm.ptr<array<142 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<142 x i8>> to !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_out_sig : !llvm.ptr<array<129 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<129 x i8>> to !llvm.ptr<i8>
    llvm.return %8 : !llvm.ptr<i8>
  ^bb2:  // pred: ^bb0
    %9 = llvm.mlir.null : !llvm.ptr<i8>
    llvm.return %9 : !llvm.ptr<i8>
  }
}

