module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 2] , \22name\22 : \22v3_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22i32\22 , \22dims\22 : [1 , 2 , 2] , \22name\22 : \22v0_0\22 }\0A ,    { \22type\22 : \22i1\22 , \22dims\22 : [2 , 1 , 2 , 2] , \22name\22 : \22v1_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [2 , 1 , 2 , 2] , \22name\22 : \22v2_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
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
  llvm.mlir.global internal constant @constant_2(dense<[[[[6, 4], [4, 4]]], [[[6, 4], [5, 4]]]]> : tensor<2x1x2x2xi32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<2 x array<1 x array<2 x array<2 x i32>>>>
  llvm.mlir.global internal constant @constant_1(dense<1> : tensor<i32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x i32>
  llvm.mlir.global internal constant @constant_0(dense<-1> : tensor<i32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x i32>
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> attributes {input_names = ["v3_0"], llvm.emit_c_interface, output_names = ["v0_0", "v1_0", "v2_0"]} {
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
    %12 = llvm.mlir.constant(2147483647 : i32) : i32
    %13 = llvm.mlir.constant(0 : index) : i64
    %14 = llvm.mlir.addressof @constant_0 : !llvm.ptr<array<1 x i32>>
    %15 = llvm.bitcast %14 : !llvm.ptr<array<1 x i32>> to !llvm.ptr<i32>
    %16 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64)>
    %17 = llvm.insertvalue %15, %16[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %18 = llvm.insertvalue %15, %17[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %19 = llvm.mlir.constant(0 : index) : i64
    %20 = llvm.insertvalue %19, %18[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %21 = llvm.mlir.addressof @constant_1 : !llvm.ptr<array<1 x i32>>
    %22 = llvm.bitcast %21 : !llvm.ptr<array<1 x i32>> to !llvm.ptr<i32>
    %23 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64)>
    %24 = llvm.insertvalue %22, %23[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %25 = llvm.insertvalue %22, %24[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %26 = llvm.mlir.constant(0 : index) : i64
    %27 = llvm.insertvalue %26, %25[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %28 = llvm.mlir.addressof @constant_2 : !llvm.ptr<array<2 x array<1 x array<2 x array<2 x i32>>>>>
    %29 = llvm.bitcast %28 : !llvm.ptr<array<2 x array<1 x array<2 x array<2 x i32>>>>> to !llvm.ptr<i32>
    %30 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %31 = llvm.insertvalue %29, %30[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %32 = llvm.insertvalue %29, %31[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %33 = llvm.mlir.constant(0 : index) : i64
    %34 = llvm.insertvalue %33, %32[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %35 = llvm.mlir.constant(2 : index) : i64
    %36 = llvm.insertvalue %35, %34[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %37 = llvm.mlir.constant(4 : index) : i64
    %38 = llvm.insertvalue %37, %36[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %39 = llvm.mlir.constant(1 : index) : i64
    %40 = llvm.insertvalue %39, %38[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %41 = llvm.mlir.constant(4 : index) : i64
    %42 = llvm.insertvalue %41, %40[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %43 = llvm.mlir.constant(2 : index) : i64
    %44 = llvm.insertvalue %43, %42[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %45 = llvm.mlir.constant(2 : index) : i64
    %46 = llvm.insertvalue %45, %44[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %47 = llvm.mlir.constant(2 : index) : i64
    %48 = llvm.insertvalue %47, %46[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %49 = llvm.mlir.constant(1 : index) : i64
    %50 = llvm.insertvalue %49, %48[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %51 = llvm.mlir.constant(2 : index) : i64
    %52 = llvm.mlir.constant(1 : index) : i64
    %53 = llvm.mlir.constant(2 : index) : i64
    %54 = llvm.mlir.constant(2 : index) : i64
    %55 = llvm.mlir.constant(1 : index) : i64
    %56 = llvm.mlir.constant(4 : index) : i64
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
    %78 = llvm.insertvalue %51, %77[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %79 = llvm.insertvalue %52, %78[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %80 = llvm.insertvalue %53, %79[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %81 = llvm.insertvalue %54, %80[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %82 = llvm.insertvalue %57, %81[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %83 = llvm.insertvalue %56, %82[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %84 = llvm.insertvalue %54, %83[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %85 = llvm.insertvalue %55, %84[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %86 = llvm.mlir.constant(0 : index) : i64
    %87 = llvm.mlir.constant(2 : index) : i64
    %88 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%86 : i64)
  ^bb1(%89: i64):  // 2 preds: ^bb0, ^bb11
    %90 = llvm.icmp "slt" %89, %87 : i64
    llvm.cond_br %90, ^bb2, ^bb12
  ^bb2:  // pred: ^bb1
    %91 = llvm.mlir.constant(0 : index) : i64
    %92 = llvm.mlir.constant(1 : index) : i64
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
    %102 = llvm.mlir.constant(2 : index) : i64
    %103 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb7(%101 : i64)
  ^bb7(%104: i64):  // 2 preds: ^bb6, ^bb8
    %105 = llvm.icmp "slt" %104, %102 : i64
    llvm.cond_br %105, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %106 = llvm.extractvalue %50[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %107 = llvm.mlir.constant(4 : index) : i64
    %108 = llvm.mul %89, %107  : i64
    %109 = llvm.mlir.constant(4 : index) : i64
    %110 = llvm.mul %94, %109  : i64
    %111 = llvm.add %108, %110  : i64
    %112 = llvm.mlir.constant(2 : index) : i64
    %113 = llvm.mul %99, %112  : i64
    %114 = llvm.add %111, %113  : i64
    %115 = llvm.add %114, %104  : i64
    %116 = llvm.getelementptr %106[%115] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %117 = llvm.load %116 : !llvm.ptr<i32>
    %118 = llvm.extractvalue %20[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %119 = llvm.load %118 : !llvm.ptr<i32>
    %120 = llvm.icmp "slt" %117, %119 : i32
    %121 = llvm.select %120, %119, %117 : i1, i32
    %122 = llvm.extractvalue %27[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %123 = llvm.load %122 : !llvm.ptr<i32>
    %124 = llvm.icmp "slt" %121, %123 : i32
    %125 = llvm.select %124, %121, %123 : i1, i32
    %126 = llvm.extractvalue %85[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %127 = llvm.mlir.constant(4 : index) : i64
    %128 = llvm.mul %89, %127  : i64
    %129 = llvm.mlir.constant(4 : index) : i64
    %130 = llvm.mul %94, %129  : i64
    %131 = llvm.add %128, %130  : i64
    %132 = llvm.mlir.constant(2 : index) : i64
    %133 = llvm.mul %99, %132  : i64
    %134 = llvm.add %131, %133  : i64
    %135 = llvm.add %134, %104  : i64
    %136 = llvm.getelementptr %126[%135] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %125, %136 : !llvm.ptr<i32>
    %137 = llvm.add %104, %103  : i64
    llvm.br ^bb7(%137 : i64)
  ^bb9:  // pred: ^bb7
    %138 = llvm.add %99, %98  : i64
    llvm.br ^bb5(%138 : i64)
  ^bb10:  // pred: ^bb5
    %139 = llvm.add %94, %93  : i64
    llvm.br ^bb3(%139 : i64)
  ^bb11:  // pred: ^bb3
    %140 = llvm.add %89, %88  : i64
    llvm.br ^bb1(%140 : i64)
  ^bb12:  // pred: ^bb1
    %141 = llvm.mlir.constant(1 : index) : i64
    %142 = llvm.mlir.constant(2 : index) : i64
    %143 = llvm.mlir.constant(2 : index) : i64
    %144 = llvm.mlir.constant(1 : index) : i64
    %145 = llvm.mlir.constant(4 : index) : i64
    %146 = llvm.mlir.constant(4 : index) : i64
    %147 = llvm.mlir.null : !llvm.ptr<i32>
    %148 = llvm.getelementptr %147[%146] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %149 = llvm.ptrtoint %148 : !llvm.ptr<i32> to i64
    %150 = llvm.mlir.constant(16 : index) : i64
    %151 = llvm.add %149, %150  : i64
    %152 = llvm.call @malloc(%151) : (i64) -> !llvm.ptr<i8>
    %153 = llvm.bitcast %152 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %154 = llvm.ptrtoint %153 : !llvm.ptr<i32> to i64
    %155 = llvm.mlir.constant(1 : index) : i64
    %156 = llvm.sub %150, %155  : i64
    %157 = llvm.add %154, %156  : i64
    %158 = llvm.urem %157, %150  : i64
    %159 = llvm.sub %157, %158  : i64
    %160 = llvm.inttoptr %159 : i64 to !llvm.ptr<i32>
    %161 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>
    %162 = llvm.insertvalue %153, %161[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %163 = llvm.insertvalue %160, %162[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %164 = llvm.mlir.constant(0 : index) : i64
    %165 = llvm.insertvalue %164, %163[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %166 = llvm.insertvalue %141, %165[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %167 = llvm.insertvalue %142, %166[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %168 = llvm.insertvalue %143, %167[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %169 = llvm.insertvalue %145, %168[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %170 = llvm.insertvalue %143, %169[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %171 = llvm.insertvalue %144, %170[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %172 = llvm.mlir.constant(0 : index) : i64
    %173 = llvm.mlir.constant(1 : index) : i64
    %174 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb13(%172 : i64)
  ^bb13(%175: i64):  // 2 preds: ^bb12, ^bb20
    %176 = llvm.icmp "slt" %175, %173 : i64
    llvm.cond_br %176, ^bb14, ^bb21
  ^bb14:  // pred: ^bb13
    %177 = llvm.mlir.constant(0 : index) : i64
    %178 = llvm.mlir.constant(2 : index) : i64
    %179 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb15(%177 : i64)
  ^bb15(%180: i64):  // 2 preds: ^bb14, ^bb19
    %181 = llvm.icmp "slt" %180, %178 : i64
    llvm.cond_br %181, ^bb16, ^bb20
  ^bb16:  // pred: ^bb15
    %182 = llvm.mlir.constant(0 : index) : i64
    %183 = llvm.mlir.constant(2 : index) : i64
    %184 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb17(%182 : i64)
  ^bb17(%185: i64):  // 2 preds: ^bb16, ^bb18
    %186 = llvm.icmp "slt" %185, %183 : i64
    llvm.cond_br %186, ^bb18, ^bb19
  ^bb18:  // pred: ^bb17
    %187 = llvm.extractvalue %171[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %188 = llvm.mlir.constant(4 : index) : i64
    %189 = llvm.mul %175, %188  : i64
    %190 = llvm.mlir.constant(2 : index) : i64
    %191 = llvm.mul %180, %190  : i64
    %192 = llvm.add %189, %191  : i64
    %193 = llvm.add %192, %185  : i64
    %194 = llvm.getelementptr %187[%193] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %12, %194 : !llvm.ptr<i32>
    %195 = llvm.add %185, %184  : i64
    llvm.br ^bb17(%195 : i64)
  ^bb19:  // pred: ^bb17
    %196 = llvm.add %180, %179  : i64
    llvm.br ^bb15(%196 : i64)
  ^bb20:  // pred: ^bb15
    %197 = llvm.add %175, %174  : i64
    llvm.br ^bb13(%197 : i64)
  ^bb21:  // pred: ^bb13
    %198 = llvm.mlir.constant(0 : index) : i64
    %199 = llvm.mlir.constant(2 : index) : i64
    %200 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb22(%198 : i64)
  ^bb22(%201: i64):  // 2 preds: ^bb21, ^bb32
    %202 = llvm.icmp "slt" %201, %199 : i64
    llvm.cond_br %202, ^bb23, ^bb33
  ^bb23:  // pred: ^bb22
    %203 = llvm.mlir.constant(0 : index) : i64
    %204 = llvm.mlir.constant(1 : index) : i64
    %205 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb24(%203 : i64)
  ^bb24(%206: i64):  // 2 preds: ^bb23, ^bb31
    %207 = llvm.icmp "slt" %206, %204 : i64
    llvm.cond_br %207, ^bb25, ^bb32
  ^bb25:  // pred: ^bb24
    %208 = llvm.mlir.constant(0 : index) : i64
    %209 = llvm.mlir.constant(2 : index) : i64
    %210 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb26(%208 : i64)
  ^bb26(%211: i64):  // 2 preds: ^bb25, ^bb30
    %212 = llvm.icmp "slt" %211, %209 : i64
    llvm.cond_br %212, ^bb27, ^bb31
  ^bb27:  // pred: ^bb26
    %213 = llvm.mlir.constant(0 : index) : i64
    %214 = llvm.mlir.constant(2 : index) : i64
    %215 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb28(%213 : i64)
  ^bb28(%216: i64):  // 2 preds: ^bb27, ^bb29
    %217 = llvm.icmp "slt" %216, %214 : i64
    llvm.cond_br %217, ^bb29, ^bb30
  ^bb29:  // pred: ^bb28
    %218 = llvm.extractvalue %85[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %219 = llvm.mlir.constant(4 : index) : i64
    %220 = llvm.mul %201, %219  : i64
    %221 = llvm.mlir.constant(4 : index) : i64
    %222 = llvm.mul %206, %221  : i64
    %223 = llvm.add %220, %222  : i64
    %224 = llvm.mlir.constant(2 : index) : i64
    %225 = llvm.mul %211, %224  : i64
    %226 = llvm.add %223, %225  : i64
    %227 = llvm.add %226, %216  : i64
    %228 = llvm.getelementptr %218[%227] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %229 = llvm.load %228 : !llvm.ptr<i32>
    %230 = llvm.extractvalue %171[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %231 = llvm.mlir.constant(4 : index) : i64
    %232 = llvm.mul %206, %231  : i64
    %233 = llvm.mlir.constant(2 : index) : i64
    %234 = llvm.mul %211, %233  : i64
    %235 = llvm.add %232, %234  : i64
    %236 = llvm.add %235, %216  : i64
    %237 = llvm.getelementptr %230[%236] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %238 = llvm.load %237 : !llvm.ptr<i32>
    %239 = llvm.icmp "slt" %238, %229 : i32
    %240 = llvm.select %239, %238, %229 : i1, i32
    %241 = llvm.extractvalue %171[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %242 = llvm.mlir.constant(4 : index) : i64
    %243 = llvm.mul %206, %242  : i64
    %244 = llvm.mlir.constant(2 : index) : i64
    %245 = llvm.mul %211, %244  : i64
    %246 = llvm.add %243, %245  : i64
    %247 = llvm.add %246, %216  : i64
    %248 = llvm.getelementptr %241[%247] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %240, %248 : !llvm.ptr<i32>
    %249 = llvm.add %216, %215  : i64
    llvm.br ^bb28(%249 : i64)
  ^bb30:  // pred: ^bb28
    %250 = llvm.add %211, %210  : i64
    llvm.br ^bb26(%250 : i64)
  ^bb31:  // pred: ^bb26
    %251 = llvm.add %206, %205  : i64
    llvm.br ^bb24(%251 : i64)
  ^bb32:  // pred: ^bb24
    %252 = llvm.add %201, %200  : i64
    llvm.br ^bb22(%252 : i64)
  ^bb33:  // pred: ^bb22
    %253 = llvm.mlir.constant(2 : index) : i64
    %254 = llvm.mlir.constant(1 : index) : i64
    %255 = llvm.mlir.constant(2 : index) : i64
    %256 = llvm.mlir.constant(2 : index) : i64
    %257 = llvm.mlir.constant(1 : index) : i64
    %258 = llvm.mlir.constant(4 : index) : i64
    %259 = llvm.mlir.constant(4 : index) : i64
    %260 = llvm.mlir.constant(8 : index) : i64
    %261 = llvm.mlir.null : !llvm.ptr<i32>
    %262 = llvm.getelementptr %261[%260] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %263 = llvm.ptrtoint %262 : !llvm.ptr<i32> to i64
    %264 = llvm.mlir.constant(16 : index) : i64
    %265 = llvm.add %263, %264  : i64
    %266 = llvm.call @malloc(%265) : (i64) -> !llvm.ptr<i8>
    %267 = llvm.bitcast %266 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %268 = llvm.ptrtoint %267 : !llvm.ptr<i32> to i64
    %269 = llvm.mlir.constant(1 : index) : i64
    %270 = llvm.sub %264, %269  : i64
    %271 = llvm.add %268, %270  : i64
    %272 = llvm.urem %271, %264  : i64
    %273 = llvm.sub %271, %272  : i64
    %274 = llvm.inttoptr %273 : i64 to !llvm.ptr<i32>
    %275 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %276 = llvm.insertvalue %267, %275[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %277 = llvm.insertvalue %274, %276[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %278 = llvm.mlir.constant(0 : index) : i64
    %279 = llvm.insertvalue %278, %277[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %280 = llvm.insertvalue %253, %279[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %281 = llvm.insertvalue %254, %280[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %282 = llvm.insertvalue %255, %281[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %283 = llvm.insertvalue %256, %282[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %284 = llvm.insertvalue %259, %283[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %285 = llvm.insertvalue %258, %284[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %286 = llvm.insertvalue %256, %285[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %287 = llvm.insertvalue %257, %286[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %288 = llvm.mlir.constant(0 : index) : i64
    %289 = llvm.mlir.constant(2 : index) : i64
    %290 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb34(%288 : i64)
  ^bb34(%291: i64):  // 2 preds: ^bb33, ^bb44
    %292 = llvm.icmp "slt" %291, %289 : i64
    llvm.cond_br %292, ^bb35, ^bb45
  ^bb35:  // pred: ^bb34
    %293 = llvm.mlir.constant(0 : index) : i64
    %294 = llvm.mlir.constant(1 : index) : i64
    %295 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb36(%293 : i64)
  ^bb36(%296: i64):  // 2 preds: ^bb35, ^bb43
    %297 = llvm.icmp "slt" %296, %294 : i64
    llvm.cond_br %297, ^bb37, ^bb44
  ^bb37:  // pred: ^bb36
    %298 = llvm.mlir.constant(0 : index) : i64
    %299 = llvm.mlir.constant(2 : index) : i64
    %300 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb38(%298 : i64)
  ^bb38(%301: i64):  // 2 preds: ^bb37, ^bb42
    %302 = llvm.icmp "slt" %301, %299 : i64
    llvm.cond_br %302, ^bb39, ^bb43
  ^bb39:  // pred: ^bb38
    %303 = llvm.mlir.constant(0 : index) : i64
    %304 = llvm.mlir.constant(2 : index) : i64
    %305 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb40(%303 : i64)
  ^bb40(%306: i64):  // 2 preds: ^bb39, ^bb41
    %307 = llvm.icmp "slt" %306, %304 : i64
    llvm.cond_br %307, ^bb41, ^bb42
  ^bb41:  // pred: ^bb40
    %308 = llvm.extractvalue %85[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %309 = llvm.mlir.constant(4 : index) : i64
    %310 = llvm.mul %291, %309  : i64
    %311 = llvm.mlir.constant(4 : index) : i64
    %312 = llvm.mul %296, %311  : i64
    %313 = llvm.add %310, %312  : i64
    %314 = llvm.mlir.constant(2 : index) : i64
    %315 = llvm.mul %301, %314  : i64
    %316 = llvm.add %313, %315  : i64
    %317 = llvm.add %316, %306  : i64
    %318 = llvm.getelementptr %308[%317] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %319 = llvm.load %318 : !llvm.ptr<i32>
    %320 = llvm.extractvalue %11[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %321 = llvm.mlir.constant(2 : index) : i64
    %322 = llvm.mul %13, %321  : i64
    %323 = llvm.mlir.constant(2 : index) : i64
    %324 = llvm.mul %296, %323  : i64
    %325 = llvm.add %322, %324  : i64
    %326 = llvm.mlir.constant(2 : index) : i64
    %327 = llvm.mul %13, %326  : i64
    %328 = llvm.add %325, %327  : i64
    %329 = llvm.add %328, %306  : i64
    %330 = llvm.getelementptr %320[%329] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %331 = llvm.load %330 : !llvm.ptr<i32>
    %332 = llvm.sub %319, %331  : i32
    %333 = llvm.extractvalue %287[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %334 = llvm.mlir.constant(4 : index) : i64
    %335 = llvm.mul %291, %334  : i64
    %336 = llvm.mlir.constant(4 : index) : i64
    %337 = llvm.mul %296, %336  : i64
    %338 = llvm.add %335, %337  : i64
    %339 = llvm.mlir.constant(2 : index) : i64
    %340 = llvm.mul %301, %339  : i64
    %341 = llvm.add %338, %340  : i64
    %342 = llvm.add %341, %306  : i64
    %343 = llvm.getelementptr %333[%342] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %332, %343 : !llvm.ptr<i32>
    %344 = llvm.add %306, %305  : i64
    llvm.br ^bb40(%344 : i64)
  ^bb42:  // pred: ^bb40
    %345 = llvm.add %301, %300  : i64
    llvm.br ^bb38(%345 : i64)
  ^bb43:  // pred: ^bb38
    %346 = llvm.add %296, %295  : i64
    llvm.br ^bb36(%346 : i64)
  ^bb44:  // pred: ^bb36
    %347 = llvm.add %291, %290  : i64
    llvm.br ^bb34(%347 : i64)
  ^bb45:  // pred: ^bb34
    %348 = llvm.mlir.constant(2 : index) : i64
    %349 = llvm.mlir.constant(1 : index) : i64
    %350 = llvm.mlir.constant(2 : index) : i64
    %351 = llvm.mlir.constant(2 : index) : i64
    %352 = llvm.mlir.constant(1 : index) : i64
    %353 = llvm.mlir.constant(4 : index) : i64
    %354 = llvm.mlir.constant(4 : index) : i64
    %355 = llvm.mlir.constant(8 : index) : i64
    %356 = llvm.mlir.null : !llvm.ptr<i1>
    %357 = llvm.getelementptr %356[%355] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %358 = llvm.ptrtoint %357 : !llvm.ptr<i1> to i64
    %359 = llvm.mlir.constant(16 : index) : i64
    %360 = llvm.add %358, %359  : i64
    %361 = llvm.call @malloc(%360) : (i64) -> !llvm.ptr<i8>
    %362 = llvm.bitcast %361 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %363 = llvm.ptrtoint %362 : !llvm.ptr<i1> to i64
    %364 = llvm.mlir.constant(1 : index) : i64
    %365 = llvm.sub %359, %364  : i64
    %366 = llvm.add %363, %365  : i64
    %367 = llvm.urem %366, %359  : i64
    %368 = llvm.sub %366, %367  : i64
    %369 = llvm.inttoptr %368 : i64 to !llvm.ptr<i1>
    %370 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>
    %371 = llvm.insertvalue %362, %370[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %372 = llvm.insertvalue %369, %371[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %373 = llvm.mlir.constant(0 : index) : i64
    %374 = llvm.insertvalue %373, %372[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %375 = llvm.insertvalue %348, %374[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %376 = llvm.insertvalue %349, %375[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %377 = llvm.insertvalue %350, %376[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %378 = llvm.insertvalue %351, %377[3, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %379 = llvm.insertvalue %354, %378[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %380 = llvm.insertvalue %353, %379[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %381 = llvm.insertvalue %351, %380[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %382 = llvm.insertvalue %352, %381[4, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %383 = llvm.mlir.constant(0 : index) : i64
    %384 = llvm.mlir.constant(2 : index) : i64
    %385 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb46(%383 : i64)
  ^bb46(%386: i64):  // 2 preds: ^bb45, ^bb56
    %387 = llvm.icmp "slt" %386, %384 : i64
    llvm.cond_br %387, ^bb47, ^bb57
  ^bb47:  // pred: ^bb46
    %388 = llvm.mlir.constant(0 : index) : i64
    %389 = llvm.mlir.constant(1 : index) : i64
    %390 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb48(%388 : i64)
  ^bb48(%391: i64):  // 2 preds: ^bb47, ^bb55
    %392 = llvm.icmp "slt" %391, %389 : i64
    llvm.cond_br %392, ^bb49, ^bb56
  ^bb49:  // pred: ^bb48
    %393 = llvm.mlir.constant(0 : index) : i64
    %394 = llvm.mlir.constant(2 : index) : i64
    %395 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb50(%393 : i64)
  ^bb50(%396: i64):  // 2 preds: ^bb49, ^bb54
    %397 = llvm.icmp "slt" %396, %394 : i64
    llvm.cond_br %397, ^bb51, ^bb55
  ^bb51:  // pred: ^bb50
    %398 = llvm.mlir.constant(0 : index) : i64
    %399 = llvm.mlir.constant(2 : index) : i64
    %400 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb52(%398 : i64)
  ^bb52(%401: i64):  // 2 preds: ^bb51, ^bb53
    %402 = llvm.icmp "slt" %401, %399 : i64
    llvm.cond_br %402, ^bb53, ^bb54
  ^bb53:  // pred: ^bb52
    %403 = llvm.extractvalue %11[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %404 = llvm.mlir.constant(2 : index) : i64
    %405 = llvm.mul %13, %404  : i64
    %406 = llvm.mlir.constant(2 : index) : i64
    %407 = llvm.mul %391, %406  : i64
    %408 = llvm.add %405, %407  : i64
    %409 = llvm.mlir.constant(2 : index) : i64
    %410 = llvm.mul %13, %409  : i64
    %411 = llvm.add %408, %410  : i64
    %412 = llvm.add %411, %401  : i64
    %413 = llvm.getelementptr %403[%412] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %414 = llvm.load %413 : !llvm.ptr<i32>
    %415 = llvm.extractvalue %287[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %416 = llvm.mlir.constant(4 : index) : i64
    %417 = llvm.mul %386, %416  : i64
    %418 = llvm.mlir.constant(4 : index) : i64
    %419 = llvm.mul %391, %418  : i64
    %420 = llvm.add %417, %419  : i64
    %421 = llvm.mlir.constant(2 : index) : i64
    %422 = llvm.mul %396, %421  : i64
    %423 = llvm.add %420, %422  : i64
    %424 = llvm.add %423, %401  : i64
    %425 = llvm.getelementptr %415[%424] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %426 = llvm.load %425 : !llvm.ptr<i32>
    %427 = llvm.icmp "slt" %414, %426 : i32
    %428 = llvm.extractvalue %382[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %429 = llvm.mlir.constant(4 : index) : i64
    %430 = llvm.mul %386, %429  : i64
    %431 = llvm.mlir.constant(4 : index) : i64
    %432 = llvm.mul %391, %431  : i64
    %433 = llvm.add %430, %432  : i64
    %434 = llvm.mlir.constant(2 : index) : i64
    %435 = llvm.mul %396, %434  : i64
    %436 = llvm.add %433, %435  : i64
    %437 = llvm.add %436, %401  : i64
    %438 = llvm.getelementptr %428[%437] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %427, %438 : !llvm.ptr<i1>
    %439 = llvm.add %401, %400  : i64
    llvm.br ^bb52(%439 : i64)
  ^bb54:  // pred: ^bb52
    %440 = llvm.add %396, %395  : i64
    llvm.br ^bb50(%440 : i64)
  ^bb55:  // pred: ^bb50
    %441 = llvm.add %391, %390  : i64
    llvm.br ^bb48(%441 : i64)
  ^bb56:  // pred: ^bb48
    %442 = llvm.add %386, %385  : i64
    llvm.br ^bb46(%442 : i64)
  ^bb57:  // pred: ^bb46
    %443 = llvm.mlir.constant(2 : index) : i64
    %444 = llvm.mlir.constant(1 : index) : i64
    %445 = llvm.mlir.constant(2 : index) : i64
    %446 = llvm.mlir.constant(2 : index) : i64
    %447 = llvm.mlir.constant(1 : index) : i64
    %448 = llvm.mlir.constant(4 : index) : i64
    %449 = llvm.mlir.constant(4 : index) : i64
    %450 = llvm.mlir.constant(8 : index) : i64
    %451 = llvm.mlir.null : !llvm.ptr<i32>
    %452 = llvm.getelementptr %451[%450] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %453 = llvm.ptrtoint %452 : !llvm.ptr<i32> to i64
    %454 = llvm.mlir.constant(16 : index) : i64
    %455 = llvm.add %453, %454  : i64
    %456 = llvm.call @malloc(%455) : (i64) -> !llvm.ptr<i8>
    %457 = llvm.bitcast %456 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %458 = llvm.ptrtoint %457 : !llvm.ptr<i32> to i64
    %459 = llvm.mlir.constant(1 : index) : i64
    %460 = llvm.sub %454, %459  : i64
    %461 = llvm.add %458, %460  : i64
    %462 = llvm.urem %461, %454  : i64
    %463 = llvm.sub %461, %462  : i64
    %464 = llvm.inttoptr %463 : i64 to !llvm.ptr<i32>
    %465 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %466 = llvm.insertvalue %457, %465[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %467 = llvm.insertvalue %464, %466[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %468 = llvm.mlir.constant(0 : index) : i64
    %469 = llvm.insertvalue %468, %467[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %470 = llvm.insertvalue %443, %469[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %471 = llvm.insertvalue %444, %470[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %472 = llvm.insertvalue %445, %471[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %473 = llvm.insertvalue %446, %472[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %474 = llvm.insertvalue %449, %473[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %475 = llvm.insertvalue %448, %474[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %476 = llvm.insertvalue %446, %475[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %477 = llvm.insertvalue %447, %476[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %478 = llvm.mlir.constant(0 : index) : i64
    %479 = llvm.mlir.constant(2 : index) : i64
    %480 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb58(%478 : i64)
  ^bb58(%481: i64):  // 2 preds: ^bb57, ^bb68
    %482 = llvm.icmp "slt" %481, %479 : i64
    llvm.cond_br %482, ^bb59, ^bb69
  ^bb59:  // pred: ^bb58
    %483 = llvm.mlir.constant(0 : index) : i64
    %484 = llvm.mlir.constant(1 : index) : i64
    %485 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb60(%483 : i64)
  ^bb60(%486: i64):  // 2 preds: ^bb59, ^bb67
    %487 = llvm.icmp "slt" %486, %484 : i64
    llvm.cond_br %487, ^bb61, ^bb68
  ^bb61:  // pred: ^bb60
    %488 = llvm.mlir.constant(0 : index) : i64
    %489 = llvm.mlir.constant(2 : index) : i64
    %490 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb62(%488 : i64)
  ^bb62(%491: i64):  // 2 preds: ^bb61, ^bb66
    %492 = llvm.icmp "slt" %491, %489 : i64
    llvm.cond_br %492, ^bb63, ^bb67
  ^bb63:  // pred: ^bb62
    %493 = llvm.mlir.constant(0 : index) : i64
    %494 = llvm.mlir.constant(2 : index) : i64
    %495 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb64(%493 : i64)
  ^bb64(%496: i64):  // 2 preds: ^bb63, ^bb65
    %497 = llvm.icmp "slt" %496, %494 : i64
    llvm.cond_br %497, ^bb65, ^bb66
  ^bb65:  // pred: ^bb64
    %498 = llvm.extractvalue %287[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %499 = llvm.mlir.constant(4 : index) : i64
    %500 = llvm.mul %481, %499  : i64
    %501 = llvm.mlir.constant(4 : index) : i64
    %502 = llvm.mul %486, %501  : i64
    %503 = llvm.add %500, %502  : i64
    %504 = llvm.mlir.constant(2 : index) : i64
    %505 = llvm.mul %491, %504  : i64
    %506 = llvm.add %503, %505  : i64
    %507 = llvm.add %506, %496  : i64
    %508 = llvm.getelementptr %498[%507] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %509 = llvm.load %508 : !llvm.ptr<i32>
    %510 = llvm.mlir.constant(false) : i1
    %511 = "llvm.intr.abs"(%509, %510) : (i32, i1) -> i32
    %512 = llvm.extractvalue %477[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %513 = llvm.mlir.constant(4 : index) : i64
    %514 = llvm.mul %481, %513  : i64
    %515 = llvm.mlir.constant(4 : index) : i64
    %516 = llvm.mul %486, %515  : i64
    %517 = llvm.add %514, %516  : i64
    %518 = llvm.mlir.constant(2 : index) : i64
    %519 = llvm.mul %491, %518  : i64
    %520 = llvm.add %517, %519  : i64
    %521 = llvm.add %520, %496  : i64
    %522 = llvm.getelementptr %512[%521] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %511, %522 : !llvm.ptr<i32>
    %523 = llvm.add %496, %495  : i64
    llvm.br ^bb64(%523 : i64)
  ^bb66:  // pred: ^bb64
    %524 = llvm.add %491, %490  : i64
    llvm.br ^bb62(%524 : i64)
  ^bb67:  // pred: ^bb62
    %525 = llvm.add %486, %485  : i64
    llvm.br ^bb60(%525 : i64)
  ^bb68:  // pred: ^bb60
    %526 = llvm.add %481, %480  : i64
    llvm.br ^bb58(%526 : i64)
  ^bb69:  // pred: ^bb58
    %527 = llvm.mlir.undef : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
    %528 = llvm.insertvalue %171, %527[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %529 = llvm.insertvalue %382, %528[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %530 = llvm.insertvalue %477, %529[2] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    llvm.return %530 : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) attributes {input_names = ["v3_0"], llvm.emit_c_interface, output_names = ["v0_0", "v1_0", "v2_0"]} {
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
    %12 = llvm.call @main_graph(%1, %2, %3, %4, %5, %6, %7, %8, %9, %10, %11) : (!llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
    llvm.store %12, %arg0 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
    llvm.return
  }
  llvm.func @run_main_graph(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.call @omTensorListGetOmtArray(%arg0) : (!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.alloca %1 x !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> : (i64) -> !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
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
    llvm.call @_mlir_ciface_main_graph(%2, %6) : (!llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) -> ()
    %44 = llvm.load %2 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
    %45 = llvm.extractvalue %44[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %46 = llvm.extractvalue %44[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %47 = llvm.extractvalue %44[2] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %48 = llvm.mlir.constant(3 : i64) : i64
    %49 = llvm.mlir.constant(24 : i64) : i64
    %50 = llvm.call @malloc(%49) : (i64) -> !llvm.ptr<i8>
    %51 = llvm.bitcast %50 : !llvm.ptr<i8> to !llvm.ptr<ptr<i8>>
    %52 = llvm.mlir.constant(3 : i64) : i64
    %53 = llvm.call @omTensorCreateUntyped(%52) : (i64) -> !llvm.ptr<i8>
    %54 = llvm.mlir.constant(1 : i64) : i64
    %55 = llvm.extractvalue %45[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %56 = llvm.bitcast %55 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %57 = llvm.extractvalue %45[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %58 = llvm.bitcast %57 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%53, %54, %56, %58) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %59 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%53, %59) : (!llvm.ptr<i8>, i64) -> ()
    %60 = llvm.call @omTensorGetShape(%53) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %61 = llvm.call @omTensorGetStrides(%53) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %62 = llvm.mlir.constant(0 : i64) : i64
    %63 = llvm.extractvalue %45[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %64 = llvm.getelementptr %60[%62] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %63, %64 : !llvm.ptr<i64>
    %65 = llvm.extractvalue %45[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %66 = llvm.getelementptr %61[%62] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %65, %66 : !llvm.ptr<i64>
    %67 = llvm.mlir.constant(1 : i64) : i64
    %68 = llvm.extractvalue %45[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %69 = llvm.getelementptr %60[%67] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %68, %69 : !llvm.ptr<i64>
    %70 = llvm.extractvalue %45[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %71 = llvm.getelementptr %61[%67] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %70, %71 : !llvm.ptr<i64>
    %72 = llvm.mlir.constant(2 : i64) : i64
    %73 = llvm.extractvalue %45[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %74 = llvm.getelementptr %60[%72] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %73, %74 : !llvm.ptr<i64>
    %75 = llvm.extractvalue %45[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %76 = llvm.getelementptr %61[%72] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %75, %76 : !llvm.ptr<i64>
    %77 = llvm.mlir.constant(0 : i64) : i64
    %78 = llvm.getelementptr %51[%77] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %53, %78 : !llvm.ptr<ptr<i8>>
    %79 = llvm.mlir.constant(4 : i64) : i64
    %80 = llvm.call @omTensorCreateUntyped(%79) : (i64) -> !llvm.ptr<i8>
    %81 = llvm.mlir.constant(1 : i64) : i64
    %82 = llvm.extractvalue %46[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %83 = llvm.bitcast %82 : !llvm.ptr<i1> to !llvm.ptr<i8>
    %84 = llvm.extractvalue %46[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %85 = llvm.bitcast %84 : !llvm.ptr<i1> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%80, %81, %83, %85) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %86 = llvm.mlir.constant(9 : i64) : i64
    llvm.call @omTensorSetDataType(%80, %86) : (!llvm.ptr<i8>, i64) -> ()
    %87 = llvm.call @omTensorGetShape(%80) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %88 = llvm.call @omTensorGetStrides(%80) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %89 = llvm.mlir.constant(0 : i64) : i64
    %90 = llvm.extractvalue %46[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %91 = llvm.getelementptr %87[%89] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %90, %91 : !llvm.ptr<i64>
    %92 = llvm.extractvalue %46[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %93 = llvm.getelementptr %88[%89] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %92, %93 : !llvm.ptr<i64>
    %94 = llvm.mlir.constant(1 : i64) : i64
    %95 = llvm.extractvalue %46[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %96 = llvm.getelementptr %87[%94] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %95, %96 : !llvm.ptr<i64>
    %97 = llvm.extractvalue %46[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %98 = llvm.getelementptr %88[%94] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %97, %98 : !llvm.ptr<i64>
    %99 = llvm.mlir.constant(2 : i64) : i64
    %100 = llvm.extractvalue %46[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %101 = llvm.getelementptr %87[%99] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %100, %101 : !llvm.ptr<i64>
    %102 = llvm.extractvalue %46[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %103 = llvm.getelementptr %88[%99] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %102, %103 : !llvm.ptr<i64>
    %104 = llvm.mlir.constant(3 : i64) : i64
    %105 = llvm.extractvalue %46[3, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %106 = llvm.getelementptr %87[%104] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %105, %106 : !llvm.ptr<i64>
    %107 = llvm.extractvalue %46[4, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %108 = llvm.getelementptr %88[%104] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %107, %108 : !llvm.ptr<i64>
    %109 = llvm.mlir.constant(1 : i64) : i64
    %110 = llvm.getelementptr %51[%109] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %80, %110 : !llvm.ptr<ptr<i8>>
    %111 = llvm.mlir.constant(4 : i64) : i64
    %112 = llvm.call @omTensorCreateUntyped(%111) : (i64) -> !llvm.ptr<i8>
    %113 = llvm.mlir.constant(1 : i64) : i64
    %114 = llvm.extractvalue %47[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %115 = llvm.bitcast %114 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %116 = llvm.extractvalue %47[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %117 = llvm.bitcast %116 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%112, %113, %115, %117) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %118 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%112, %118) : (!llvm.ptr<i8>, i64) -> ()
    %119 = llvm.call @omTensorGetShape(%112) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %120 = llvm.call @omTensorGetStrides(%112) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %121 = llvm.mlir.constant(0 : i64) : i64
    %122 = llvm.extractvalue %47[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %123 = llvm.getelementptr %119[%121] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %122, %123 : !llvm.ptr<i64>
    %124 = llvm.extractvalue %47[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %125 = llvm.getelementptr %120[%121] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %124, %125 : !llvm.ptr<i64>
    %126 = llvm.mlir.constant(1 : i64) : i64
    %127 = llvm.extractvalue %47[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %128 = llvm.getelementptr %119[%126] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %127, %128 : !llvm.ptr<i64>
    %129 = llvm.extractvalue %47[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %130 = llvm.getelementptr %120[%126] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %129, %130 : !llvm.ptr<i64>
    %131 = llvm.mlir.constant(2 : i64) : i64
    %132 = llvm.extractvalue %47[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %133 = llvm.getelementptr %119[%131] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %132, %133 : !llvm.ptr<i64>
    %134 = llvm.extractvalue %47[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %135 = llvm.getelementptr %120[%131] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %134, %135 : !llvm.ptr<i64>
    %136 = llvm.mlir.constant(3 : i64) : i64
    %137 = llvm.extractvalue %47[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %138 = llvm.getelementptr %119[%136] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %137, %138 : !llvm.ptr<i64>
    %139 = llvm.extractvalue %47[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %140 = llvm.getelementptr %120[%136] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %139, %140 : !llvm.ptr<i64>
    %141 = llvm.mlir.constant(2 : i64) : i64
    %142 = llvm.getelementptr %51[%141] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %112, %142 : !llvm.ptr<ptr<i8>>
    %143 = llvm.call @omTensorListCreate(%51, %48, %1) : (!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
    llvm.return %143 : !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_in_sig : !llvm.ptr<array<72 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<72 x i8>> to !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_out_sig : !llvm.ptr<array<206 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<206 x i8>> to !llvm.ptr<i8>
    llvm.return %8 : !llvm.ptr<i8>
  ^bb2:  // pred: ^bb0
    %9 = llvm.mlir.null : !llvm.ptr<i8>
    llvm.return %9 : !llvm.ptr<i8>
  }
}

